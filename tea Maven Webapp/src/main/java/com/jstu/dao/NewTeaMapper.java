package com.jstu.dao;

import java.util.List;

import com.jstu.model.NewTea;

public interface NewTeaMapper {
    int deleteByPrimaryKey(Integer teaid);

    int insert(NewTea record);

    int insertSelective(NewTea record);

    NewTea selectByPrimaryKey(Integer teaid);

    int updateByPrimaryKeySelective(NewTea record);

    int updateByPrimaryKey(NewTea record);
    
    List<NewTea> teaSelective(NewTea record);
}