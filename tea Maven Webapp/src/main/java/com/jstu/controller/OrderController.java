package com.jstu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jstu.model.GoodOrder;
import com.jstu.model.OrderInfo;
import com.jstu.model.Result;
import com.jstu.model.User;
import com.jstu.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
@Autowired
OrderService orderService;
//购买（支付、未支付）
@RequestMapping("/buy")
@ResponseBody
public Result buy(Integer[] goodid,Integer[] goodnum,Integer[] cartid,double sum,HttpSession session){
User user=(User) session.getAttribute("userinfo");
GoodOrder goodOrder=new GoodOrder();
goodOrder.setSum(sum);
goodOrder.setId(user.getId());
goodOrder.setState(0);
String string=orderService.insertByBuy(goodOrder, goodid, goodnum,cartid);
Result result=new Result();
result.setResult(string);
return result;
}
//显示完成或者待支付订单
@RequestMapping("/showall")
public String showAllOrder(Integer state,Model model,HttpSession session){
	User user=(User) session.getAttribute("userinfo");
	if(user!=null)
	{
		List<GoodOrder> orderList=orderService.selectAll(user.getId(), state);
		model.addAttribute("orderList", orderList);
		if(state==1)
		return "finishedorder";
		else return "payorder";
	}
	else{
		return "login";
	}
}
//支付待支付订单
@RequestMapping("/pay")
public String pay(Integer orderid,Model model,HttpSession session){
	User user=(User) session.getAttribute("userinfo");
	String string=orderService.updateByPay(orderid, user.getId());
	model.addAttribute("info", string);
	return "success";
	
}
//删除待支付订单or已完成订单
@RequestMapping("/deleteorder")
public String deletePayOrder(Integer orderid,Integer state){
	orderService.deletePayOrder(orderid);
	return "redirect:showall.do?state="+state;
}
}
