package com.jstu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jstu.dao.NewTeaMapper;
import com.jstu.model.NewTea;
import com.jstu.service.NewTeaService;
import com.jstu.util.MultiPartTools;
@Service
public class NewTeaServiceImpl implements NewTeaService {
@Autowired
NewTeaMapper newTeaMapper;
	@Override
	public List<NewTea> teaSelective(NewTea record) {
		// TODO Auto-generated method stub
		return newTeaMapper.teaSelective(record);
	}
	@Override
	public int insertSelective(NewTea record,CommonsMultipartFile teafile) {
		String teapath=MultiPartTools.saveFile(teafile,"upload/teaimg");
		record.setTeapath(teapath);
		return newTeaMapper.insertSelective(record);
	}
	@Override
	public int deleteByPrimaryKey(Integer teaid) {
		NewTea newTea=newTeaMapper.selectByPrimaryKey(teaid);
		MultiPartTools.delFile(newTea.getTeapath());
		return newTeaMapper.deleteByPrimaryKey(teaid);
	}
	@Override
	public NewTea selectByPrimaryKey(Integer teaid) {
		return newTeaMapper.selectByPrimaryKey(teaid);
	}
	@Override
	public int updateTeaByPrimaryKey(NewTea record, CommonsMultipartFile teafile) {
		if(teafile==null||teafile.isEmpty());
		else{
			MultiPartTools.delFile(record.getTeapath());
			String teapath=MultiPartTools.saveFile(teafile,"upload/teaimg");
			record.setTeapath(teapath);
		}
		return newTeaMapper.updateByPrimaryKey(record);
	}

}
