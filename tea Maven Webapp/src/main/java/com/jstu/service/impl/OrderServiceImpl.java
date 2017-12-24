package com.jstu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jstu.dao.CartMapper;
import com.jstu.dao.GoodOrderMapper;
import com.jstu.dao.GoodsMapper;
import com.jstu.dao.OrderInfoMapper;
import com.jstu.dao.UserMapper;
import com.jstu.model.GoodOrder;
import com.jstu.model.Goods;
import com.jstu.model.OrderInfo;
import com.jstu.model.User;
import com.jstu.service.OrderService;
@Service
@Transactional
public class OrderServiceImpl implements OrderService {
@Autowired
GoodOrderMapper goodOrderMapper;
@Autowired
OrderInfoMapper orderInfoMapper;
@Autowired
UserMapper userMapper;
@Autowired
GoodsMapper goodsMapper;
@Autowired
CartMapper cartMapper;

	@Override
public synchronized String insertByBuy(GoodOrder goodOrder,Integer[] goodid,Integer[] goodnum,Integer[] cartid) {
		boolean flag=true;
		User user=userMapper.selectByPrimaryKey(goodOrder.getId());
		//检验账户余额是否足够
		if(goodOrder.getSum()<=user.getAccount())
		{   //检验库存是否足够
			for(int i=0;i<goodid.length;i++)
			{
				Goods goods=goodsMapper.selectByPrimaryKey(goodid[i]);
				if(goods.getGoodstock()<goodnum[i])
					flag=false;
			}
			//足够时
			if(flag)
			{
			goodOrder.setState(1);
			goodOrderMapper.insert(goodOrder);
			for(int i=0;i<goodid.length;i++)
			{
			OrderInfo orderInfo=new OrderInfo();
			orderInfo.setOrderid(goodOrder.getOrderid());
			orderInfo.setGoodid(goodid[i]);
			orderInfo.setGoodnum(goodnum[i]);
			orderInfoMapper.insert(orderInfo);
			}
			//扣款
			user.setAccount(user.getAccount()-goodOrder.getSum());
			userMapper.updateByPrimaryKey(user);
			//减库存
			for(int i=0;i<goodid.length;i++)
			{
				Goods goods=goodsMapper.selectByPrimaryKey(goodid[i]);
				goods.setGoodstock(goods.getGoodstock()-goodnum[i]);
				goodsMapper.updateByPrimaryKey(goods);
			}
			//清购物车
			if(cartid[0]!=0)
			{
				for (Integer integer : cartid) {
					cartMapper.deleteByPrimaryKey(integer);
				}
			}
			return "恭喜您,购买成功";
			}
			//不足够时
			else{
				return "购买失败，库存不足";
			}
		}
		else{
			goodOrderMapper.insert(goodOrder);
			for(int i=0;i<goodid.length;i++)
			{
			OrderInfo orderInfo=new OrderInfo();
			orderInfo.setOrderid(goodOrder.getOrderid());
			orderInfo.setGoodid(goodid[i]);
			orderInfo.setGoodnum(goodnum[i]);
			orderInfoMapper.insert(orderInfo);
			}
			//清购物车
			if(cartid[0]!=0)
			{
				for (Integer integer : cartid) {
					cartMapper.deleteByPrimaryKey(integer);
				}
			}
			return "购买失败，你的余额不足";
		}
	}

	@Override
	public List<GoodOrder> selectAll(Integer id, Integer state) {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("id", id);
		map.put("state", state);
		return goodOrderMapper.selectAll(map);
	}

	@Override
	public  String updateByPay(Integer orderid,Integer id) {
		User user=userMapper.selectByPrimaryKey(id);
		GoodOrder goodOrder=goodOrderMapper.selectByPrimaryKey(orderid);
		boolean flag=true;
		//检验账户余额是否足够
		if(user.getAccount()>=goodOrder.getSum())
		{   synchronized(this){
			List<OrderInfo> orderInfos=orderInfoMapper.selectByOrderId(orderid);
			for (OrderInfo orderInfo : orderInfos) {
				Goods goods=goodsMapper.selectByPrimaryKey(orderInfo.getGoodid());
				//检验库存是否足够
				if(goods.getGoodstock()<orderInfo.getGoodnum())
					flag=false;
			}
			//true时
			if(flag)
			{
				//扣款
				user.setAccount(user.getAccount()-goodOrder.getSum());
				userMapper.updateByPrimaryKey(user);
				//减库存
				for (OrderInfo orderInfo : orderInfos) {
					Goods goods=goodsMapper.selectByPrimaryKey(orderInfo.getGoodid());
					goods.setGoodstock(goods.getGoodstock()-orderInfo.getGoodnum());
					goodsMapper.updateByPrimaryKey(goods);
				}
				//把待支付转换成已完成订单
				goodOrder.setState(1);
				goodOrderMapper.updateByPrimaryKey(goodOrder);
				return "恭喜您，购买成功";
			}
			//false时
			else{
				return "库存不足，请稍后再试";
			}
		}
		}
		else
		{
			return "余额不足，请前去充值";
		}
		
	}

	@Override
	public void deletePayOrder(Integer orderid) {
		goodOrderMapper.deleteByPrimaryKey(orderid);
		orderInfoMapper.deleteById(orderid);
	}

}
