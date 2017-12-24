package com.jstu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jstu.dao.CartMapper;
import com.jstu.model.Cart;
import com.jstu.service.CartService;
@Service
public class CartServiceImpl implements CartService {
@Autowired
CartMapper cartMapper;
	@Override
	public int insertSelective(Cart record) {
		// TODO Auto-generated method stub
		return cartMapper.insertSelective(record);
	}
	@Override
	public List<Cart> selectAndShow(Integer id) {
		return cartMapper.selectAndShow(id);
	}
	@Override
	public int deleteByPrimaryKey(Integer cartid) {
		return cartMapper.deleteByPrimaryKey(cartid);
	}
	@Override
	public Cart getSummary(Integer cartid) {
		return cartMapper.getSummary(cartid);
	}

}
