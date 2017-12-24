package com.jstu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jstu.model.Goods;
import com.jstu.model.NewTea;
import com.jstu.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	@Autowired
	GoodsService goodsService;
@RequestMapping("/showgoods")
public String showGoods(Model model)
{   Goods record=null;
	List<Goods> goodsList=goodsService.goodsSelective(record);
	model.addAttribute("goodsList", goodsList);
	return "back/goods";
}
@RequestMapping("/addgoods")
public String addGoods(Goods goods,@RequestParam("goodfile") CommonsMultipartFile goodfile){
	int a;
	if(goods.getGoodid() == 0)
	{
	a=goodsService.insertSelective(goods, goodfile);
	}
	else{
	a=goodsService.updateByPrimaryKey(goods, goodfile);
	}
	if(a == 0)
	{
	return "back/error-404";	
	}
	else{
	return "redirect:showgoods.do";
	}
}
@RequestMapping("/modifygoods")
public String modifygGoods(Integer goodid,Model model){
	Goods goods=goodsService.selectByPrimaryKey(goodid);
	model.addAttribute("goods", goods);
	return "back/addgoods";
}
@RequestMapping("/delgoods")
public String delgoods(Integer goodid){
	int a=goodsService.deleteByPrimaryKey(goodid);
	if(a==0)
	{
		return "back/error-404";
	}
	else {
		return "redirect:showgoods.do";
	}
}
/*查询所有商品传给主页面*/
@RequestMapping("/showmaingoods")
public String showmain(Model model){
	 Goods record=null;
	 List<Goods> goodsList=goodsService.goodsSelective(record);
	 model.addAttribute("goodsList", goodsList);
	 return "goods";
}
/*选择页面显示商品信息*/
@RequestMapping("/choose")
public String choosegoods(Model model,Integer goodid){
	 Goods goods=goodsService.selectByPrimaryKey(goodid);
	 model.addAttribute("goods", goods);
	 return "choose";
}
/*确认订单页面显示商品信息*/
@RequestMapping("/confirm")
public String confirm(Model model,Integer[] goodid,Integer[] goodnum,Integer[] cartid,double sum){
	List<Goods> goodsList=new ArrayList<Goods>();
	for(int i=0;i<goodid.length;i++)
	{
		Goods goods=goodsService.selectByPrimaryKey(goodid[i]);
		goods.setGoodstock(goodnum[i]);
	    goodsList.add(goods);
	}
	if(cartid==null)
	{
		cartid=new Integer[1];
		cartid[0]=0;
	}
	model.addAttribute("cartid", cartid);
	model.addAttribute("goodsList", goodsList);
	model.addAttribute("sum", sum);
	return "confirmorder";
}
}
