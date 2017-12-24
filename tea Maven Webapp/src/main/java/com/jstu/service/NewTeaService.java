package com.jstu.service;

import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jstu.model.NewTea;

public interface NewTeaService {
	List<NewTea> teaSelective(NewTea record);
	int insertSelective(NewTea record,CommonsMultipartFile teafile);
	int deleteByPrimaryKey(Integer teaid);
	NewTea selectByPrimaryKey(Integer teaid);
	int updateTeaByPrimaryKey(NewTea record,CommonsMultipartFile teafile);
}
