package com.jstu.service;

import java.util.List;
import java.util.Map;

import com.jstu.model.GoodOrder;
import com.jstu.model.OrderInfo;

public interface OrderService {
String insertByBuy(GoodOrder goodOrder,Integer[] goodid,Integer[] goodnum,Integer[] cartid);
List<GoodOrder> selectAll(Integer id,Integer state);
String updateByPay(Integer orderid,Integer id);
void  deletePayOrder(Integer orderid);
}
