package com.jstu.dao;

import java.util.List;

import com.jstu.model.OrderInfo;

public interface OrderInfoMapper {
    int insert(OrderInfo record);

    int insertSelective(OrderInfo record);
    
    List<OrderInfo> selectByOrderId(Integer orderid);
    
    int  deleteById(Integer orderid);
}