package com.jstu.dao;

import java.util.List;

import com.jstu.model.Cart;

public interface CartMapper {
    int deleteByPrimaryKey(Integer cartid);

    int insert(Cart record);

    int insertSelective(Cart record);

    Cart selectByPrimaryKey(Integer cartid);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);
    
    List<Cart> selectAndShow(Integer id);
    
    Cart getSummary(Integer cartid);
}