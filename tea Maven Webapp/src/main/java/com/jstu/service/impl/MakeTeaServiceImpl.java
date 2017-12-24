package com.jstu.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jstu.dao.MakeTeaMapper;
import com.jstu.model.MakeTea;
import com.jstu.service.MakeTeaService;
@Service
public class MakeTeaServiceImpl implements MakeTeaService {
	@Autowired
    MakeTeaMapper makeTeaMapper;
	@Override
	public List<MakeTea> selectAll() {
		
		return makeTeaMapper.selectAll();
	}
	@Override
	public int insert(MakeTea record) {
		Date date=new Date();
		SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
		String essaydate=simpleDateFormat.format(date);
		record.setDate(essaydate);
		return makeTeaMapper.insert(record);
	}
	@Override
	public MakeTea selectByPrimaryKey(Integer essayid) {
		return makeTeaMapper.selectByPrimaryKey(essayid);
	}
	@Override
	public int updateByPrimaryKeySelective(MakeTea record) {
		return makeTeaMapper.updateByPrimaryKeySelective(record);
	}
	@Override
	public int deleteByPrimaryKey(Integer essayid) {
		return makeTeaMapper.deleteByPrimaryKey(essayid);
	}

}
