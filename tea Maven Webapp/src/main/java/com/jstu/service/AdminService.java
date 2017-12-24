package com.jstu.service;

import java.math.BigDecimal;
import java.util.List;

import com.jstu.model.Admin;

public interface AdminService {
	List<Admin> adminSelective(Admin record);
}
