package com.jstu.dao;

import java.util.List;
import java.util.Map;

import com.jstu.model.GoodOrder;

public interface GoodOrderMapper {
    int deleteByPrimaryKey(Integer orderid);

    int insert(GoodOrder record);

    int insertSelective(GoodOrder record);

    GoodOrder selectByPrimaryKey(Integer orderid);

    int updateByPrimaryKeySelective(GoodOrder record);

    int updateByPrimaryKey(GoodOrder record);
    
    List<GoodOrder> selectAll(Map<String, Object> map);
}