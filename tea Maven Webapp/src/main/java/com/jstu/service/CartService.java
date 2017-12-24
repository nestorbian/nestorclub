package com.jstu.service;

import java.util.List;

import com.jstu.model.Cart;

public interface CartService {
	int insertSelective(Cart record);
	List<Cart> selectAndShow(Integer id);
	int deleteByPrimaryKey(Integer cartid);
	Cart getSummary(Integer cartid);
}
