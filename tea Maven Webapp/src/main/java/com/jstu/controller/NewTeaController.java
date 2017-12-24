package com.jstu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jstu.model.NewTea;
import com.jstu.service.NewTeaService;
@Controller
@RequestMapping("/newtea")
public class NewTeaController {
	@Autowired
	NewTeaService newTeaService;
@RequestMapping("/showtea")
public String showtea(Model model){
	NewTea record=null;
	List<NewTea> teaList=newTeaService.teaSelective(record);
	model.addAttribute("teaList", teaList);
	return "back/newtea";
}
@RequestMapping("/addtea")
public String addtea(NewTea newTea,@RequestParam("teafile") CommonsMultipartFile teafile){
	int a;
	if(newTea.getTeaid()==0)
	{
	a=newTeaService.insertSelective(newTea, teafile);
	}
	else{
	a=newTeaService.updateTeaByPrimaryKey(newTea, teafile);
	}
	if(a==0)
	{
	return "back/error-404";	
	}
	else{
	return "redirect:showtea.do";
	}
}
@RequestMapping("/deltea")
public String deltea(Integer teaid){
	int a=newTeaService.deleteByPrimaryKey(teaid);
	if(a==0)
	{
		return "back/error-404";
	}
	else {
		return "redirect:showtea.do";
	}
}
@RequestMapping("/modifytea")
public String modifytea(Integer teaid,Model model){
	NewTea newTea=newTeaService.selectByPrimaryKey(teaid);
	model.addAttribute("newTea", newTea);
	return "back/addtea";
}

@RequestMapping("/shownewtea")
public String shownewtea(Model model){
	NewTea record=null;
	List<NewTea> teaList=newTeaService.teaSelective(record);
	model.addAttribute("teaList", teaList);
	return "newtea";
}
}
