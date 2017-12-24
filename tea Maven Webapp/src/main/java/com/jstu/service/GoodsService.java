package com.jstu.service;

import java.util.List;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jstu.model.Goods;

public interface GoodsService {
	List<Goods> goodsSelective(Goods record);
	int insertSelective(Goods record,CommonsMultipartFile goodfile);
	int updateByPrimaryKey(Goods record,CommonsMultipartFile goodfile);
	Goods selectByPrimaryKey(Integer goodid);
	int deleteByPrimaryKey(Integer goodid);
}
