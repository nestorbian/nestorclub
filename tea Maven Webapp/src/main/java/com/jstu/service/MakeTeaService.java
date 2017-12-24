package com.jstu.service;

import java.util.List;

import com.jstu.model.MakeTea;

public interface MakeTeaService {
	List<MakeTea> selectAll();
	
	int insert(MakeTea record);
	
	MakeTea selectByPrimaryKey(Integer essayid);
	
    int updateByPrimaryKeySelective(MakeTea record);
    
    int deleteByPrimaryKey(Integer essayid);
}
