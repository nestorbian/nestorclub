package com.jstu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jstu.dao.AdminMapper;
import com.jstu.model.Admin;
import com.jstu.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
@Autowired
AdminMapper adminMapper;
@Override
public List<Admin> adminSelective(Admin record) {
	
	return adminMapper.adminSelective(record);
}
}
