package com.jstu.controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.ws.rs.ForbiddenException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jstu.model.Cart;
import com.jstu.model.Result;
import com.jstu.model.User;
import com.jstu.service.CartService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	CartService cartService;
	ObjectMapper objectMapper = new ObjectMapper();
@RequestMapping("/addcart")
@ResponseBody
public Result addCart(int goodid,int goodnum,double sum,HttpSession session){
     Cart cart=new Cart();
     Result result=new Result();
     User user= (User) session.getAttribute("userinfo");
     cart.setId(user.getId());
     cart.setGoodid(goodid);
     cart.setGoodnum(goodnum);
     cart.setSum(sum);
     int a=cartService.insertSelective(cart);
     if(a>0) result.setResult("加入购物车成功");
     else  result.setResult("加入购物车失败");
     return result;
}
/*显示购物车的商品*/
@RequestMapping("/showcart")
public String showCart(Model model,HttpSession session){
	User user=(User) session.getAttribute("userinfo");
	if(user!=null){
	List<Cart> cartList=cartService.selectAndShow(user.getId());
	model.addAttribute("cartList", cartList);
	return "cart";
	}
	else{
	return "login";
	}
}
/*删除购物车里的商品*/
@RequestMapping("/deletecart")
public String deleteCart(Integer cartid){
	System.out.println(cartid);
	int a=cartService.deleteByPrimaryKey(cartid);
	if(a!=0)
	{
		return "redirect:showcart.do";
	}
	else{
		return "error";
	}
}
//for test
@RequestMapping(value = "/testCart", method=RequestMethod.GET)
public String testdeleteCart(Integer cartid){
	String result = null;
	Cart cart=cartService.getSummary(cartid);
	try {
		result = objectMapper.writeValueAsString(cart);
		System.out.println(result);
	} catch (Exception e) {
		e.printStackTrace();
	}
	return result;
}
}
