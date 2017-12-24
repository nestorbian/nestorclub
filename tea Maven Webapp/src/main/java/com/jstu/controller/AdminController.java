package com.jstu.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jstu.model.Admin;
import com.jstu.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	AdminService adminService;
@RequestMapping("/login")
public String login(Admin admin,HttpSession session){
	List<Admin> list=adminService.adminSelective(admin);
	if(list.size()==0)
	{
		return "back/error-404";
	}
	else{
	session.setAttribute("admin", list.get(0));
	return "back/index";
	}
}
@RequestMapping("/exit")
public String exit(HttpSession session){
	session.removeAttribute("admin");
	return "back/login";
}
}
