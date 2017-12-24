package com.jstu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jstu.dao.UserMapper;
import com.jstu.model.User;
import com.jstu.service.UserService;
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    UserMapper userMapper;
	@Override
	public List<User> selectSelective(String username,String password) {
		User record=new User();
		record.setUsername(username);
		record.setPassword(password);
		return userMapper.selectSelective(record);
	}
	@Override
	public int insertSelective(User record) {
		return userMapper.insertSelective(record);
	}
	@Override
	public boolean checkName(String username) {
		User record=new User();
		record.setUsername(username);
		List<User> list=userMapper.selectSelective(record);
		if(list.size()==0)
		{
			return true;
		}
		else
		{
		return false;
		}
	}
	@Override
	public List<User> selectAll() {
		return userMapper.selectAll();
	}
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return userMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(User record) {
		return userMapper.insert(record);
	}
	@Override
	public int updateByPrimaryKey(User record) {
		return userMapper.updateByPrimaryKey(record);
	}
	@Override
	public User selectByPrimaryKey(Integer id) {
		return userMapper.selectByPrimaryKey(id);
	}
	@Override
	public int updateAccount(User record) {
		User user=userMapper.selectByPrimaryKey(record.getId());
		user.setAccount(record.getAccount()+user.getAccount());
		return userMapper.updateByPrimaryKeySelective(user);
	}
	@Override
	public int updateByPrimaryKeySelective(User record) {
		return userMapper.updateByPrimaryKeySelective(record);
	}

}
