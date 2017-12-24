package com.jstu.dao;

import java.util.List;

import com.jstu.model.Goods;

public interface GoodsMapper {
    int deleteByPrimaryKey(Integer goodid);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer goodid);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    List<Goods> goodsSelective(Goods record);
}