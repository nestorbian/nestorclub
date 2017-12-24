package com.jstu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jstu.model.MakeTea;
import com.jstu.service.MakeTeaService;

@Controller
@RequestMapping("/maketea")
public class MakeTeaController {
	@Autowired
	MakeTeaService makeTeaService;
@RequestMapping("/showall")
public String showAllEassy(Model model){
	List<MakeTea> essayList=makeTeaService.selectAll();
	model.addAttribute("essayList", essayList);
	return "back/maketea";
}
@RequestMapping("/addormodify")
public String addOrModify(MakeTea makeTea){
	if(makeTea.getEssayid()==0)
	{
		int a=makeTeaService.insert(makeTea);
		if(a>0)
		return "redirect:showall.do";
		else return "error";
	}
	else{
		int a=makeTeaService.updateByPrimaryKeySelective(makeTea);
		if(a>0)
		return "redirect:showall.do";
		else return "error";
	}
}
@RequestMapping("/selectbyid")
public String selectById(Integer essayid,Model model){
	MakeTea makeTea=makeTeaService.selectByPrimaryKey(essayid);
	model.addAttribute("essay", makeTea);
	return "back/addessay";
}
@RequestMapping("/deletebyid")
public String deleteById(Integer essayid){
	int a=makeTeaService.deleteByPrimaryKey(essayid);
	if(a>0)
	return "redirect:showall.do";
	else return "error";

}
@RequestMapping("/showessays")
public String showAllEassys(Model model){
	List<MakeTea> essayList=makeTeaService.selectAll();
	model.addAttribute("essayList", essayList);
	return "maketea";
}
}
