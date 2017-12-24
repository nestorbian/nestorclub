package com.jstu.controller;

import java.util.List;

import javax.print.DocFlavor.STRING;
import javax.servlet.http.HttpSession;

import org.omg.PortableInterceptor.USER_EXCEPTION;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jstu.model.User;
import com.jstu.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
@Autowired
UserService userService;
//用户登录
@RequestMapping("/login")
@ResponseBody
public User login(@RequestBody User user,HttpSession session){
	List<User> userList=userService.selectSelective(user.getUsername(), user.getPassword());
	if(userList.size()>0)
	{
		session.setAttribute("userinfo",userList.get(0));
		return userList.get(0);
	}
	else{
		return new User();
	}
}
//用户注册
@RequestMapping("/register")
public String register(User user,HttpSession session){
	int i=userService.insertSelective(user);
	if(i>0)
	{
	User userinfo=userService.selectByPrimaryKey(user.getId());
	session.setAttribute("userinfo", userinfo);
	return "teaindex";
	}
	else{
	return "back/error-404";
	}
}
//用户退出
@RequestMapping("/exit")
public String exit(HttpSession session){
	session.removeAttribute("userinfo");
	return "login";
	}
//验证用户名是否重复
@RequestMapping("/checkName")
@ResponseBody
public boolean checkName(String username){
	boolean a=userService.checkName(username);
	return a;
}
//管理员显示全部用户信息
@RequestMapping("/showall")
public String showAll(Model model){
	List<User> userList=userService.selectAll();
	model.addAttribute("userList",userList);
	return "back/user";
}
//删除用户
@RequestMapping("/deleteuser")
public String deleteUser(Integer id){
	int a=userService.deleteByPrimaryKey(id);
	if(a>0) return "redirect:showall.do";
	else return "error";
}
//增加or修改
@RequestMapping("/addormodify")
public String addOrModify(User user){
	if(user.getId()==0)
	{
		int a=userService.insertSelective(user);
		if(a>0) return "redirect:showall.do";
		else return "error";
	}
	else{
		int a=userService.updateByPrimaryKey(user);
		if(a>0) return "redirect:showall.do";
		else return "error";
	}
}
//显示要修改的用户信息
@RequestMapping("/showbyid")
public String showById(Integer id,Model model){
	User user=userService.selectByPrimaryKey(id);
	model.addAttribute("user", user);
	return "back/adduser";

}
//用户充值
@RequestMapping("/recharge")
public String recharge(Double money,Model model,HttpSession session){
	User user=(User) session.getAttribute("userinfo");
	if(user!=null)
	{
	user.setAccount(money);
    int a=userService.updateAccount(user);
    if(a>0)
    { 
    	model.addAttribute("info", "恭喜您，充值成功！");
    	return "success";
    }
    else
    {
    	return "error";
    }
	}
	else{
		return "login";
	}
}
//修改个人信息
@RequestMapping("/modifyinfo")
public String modifyInfo(User user,Model model){
		int a=userService.updateByPrimaryKeySelective(user);
		if(a>0)
			{
			model.addAttribute("info", "恭喜您，修改成功！");
			return "success";
			}
		else return "error";
}
//查询修改的个人信息
@RequestMapping("/selectinfo")
public String selectInfo(Model model,HttpSession session){
	    User info=(User) session.getAttribute("userinfo");
	    if(info!=null)
	    {
		User user=userService.selectByPrimaryKey(info.getId());
		model.addAttribute("user", user);
		return "modifyinfo";
	    }
	    else {
			return "login";
		}
}
//查询个人信息
@RequestMapping("/userinfo")
public String userInfo(Model model,HttpSession session){
	    User info=(User) session.getAttribute("userinfo");
	    if(info!=null)
	    {
		User user=userService.selectByPrimaryKey(info.getId());
		model.addAttribute("user", user);
		return "userinfo";
	    }
	    else{
	    	return "login";
	    }
}
}
