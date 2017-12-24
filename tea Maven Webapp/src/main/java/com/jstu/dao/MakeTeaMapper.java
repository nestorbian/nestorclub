package com.jstu.dao;

import java.util.List;

import com.jstu.model.MakeTea;

public interface MakeTeaMapper {
    int deleteByPrimaryKey(Integer essayid);

    int insert(MakeTea record);

    int insertSelective(MakeTea record);

    MakeTea selectByPrimaryKey(Integer essayid);
    
    List<MakeTea> selectAll();

    int updateByPrimaryKeySelective(MakeTea record);

    int updateByPrimaryKey(MakeTea record);
}