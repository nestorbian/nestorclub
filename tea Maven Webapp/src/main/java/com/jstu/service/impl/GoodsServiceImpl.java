package com.jstu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jstu.dao.GoodsMapper;
import com.jstu.model.Goods;
import com.jstu.service.GoodsService;
import com.jstu.util.MultiPartTools;
@Service
public class GoodsServiceImpl implements GoodsService {
@Autowired
GoodsMapper goodsMapper;
	@Override
	public List<Goods> goodsSelective(Goods record) {
		return goodsMapper.goodsSelective(record);
	}
	@Override
	public int insertSelective(Goods record,CommonsMultipartFile goodfile) {
		String googpath=MultiPartTools.saveFile(goodfile,"upload/goodimg");
		record.setGoogpath(googpath);
		return goodsMapper.insertSelective(record);
	}
	@Override
	public int updateByPrimaryKey(Goods record, CommonsMultipartFile goodfile) {
		if(goodfile==null||goodfile.isEmpty());
		else{
			MultiPartTools.delFile(record.getGoogpath());
			String goodpath=MultiPartTools.saveFile(goodfile,"upload/goodimg");
			record.setGoogpath(goodpath);
		}
		return goodsMapper.updateByPrimaryKey(record);
	}
	@Override
	public Goods selectByPrimaryKey(Integer goodid) {
		return goodsMapper.selectByPrimaryKey(goodid);
	}
	@Override
	public int deleteByPrimaryKey(Integer goodid) {
		Goods goods=goodsMapper.selectByPrimaryKey(goodid);
		MultiPartTools.delFile(goods.getGoogpath());
		return goodsMapper.deleteByPrimaryKey(goodid);
	}

}
