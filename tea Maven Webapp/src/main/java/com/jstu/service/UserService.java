package com.jstu.service;

import java.util.List;

import com.jstu.model.User;

public interface UserService {
	List<User> selectSelective(String username,String password);
	int insertSelective(User record);
	boolean checkName(String username);
	List<User> selectAll();
	int deleteByPrimaryKey(Integer id);
	int insert(User record);
	int updateByPrimaryKey(User record);
	User selectByPrimaryKey(Integer id);
	int updateAccount(User record);
	int updateByPrimaryKeySelective(User record);
}
