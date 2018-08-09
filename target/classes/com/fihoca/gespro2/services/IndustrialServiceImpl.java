package com.fihoca.gespro2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fihoca.gespro2.dao.IndustrialMapper;
import com.fihoca.gespro2.entities.Industrial;

@Service
public class IndustrialServiceImpl implements IndustrialService{
	@Autowired
	private IndustrialMapper industrialMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return this.industrialMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Industrial record) {
		return this.industrialMapper.insert(record);
	}

	@Override
	public int insertSelective(Industrial record) {
		return this.industrialMapper.insertSelective(record);
	}

	@Override
	public Industrial selectByPrimaryKey(Integer id) {
		return industrialMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Industrial> selectAll() {
		return this.industrialMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKeySelective(Industrial record) {
		return this.industrialMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Industrial record) {
		return this.industrialMapper.updateByPrimaryKey(record);
	}
	public void setIndustrialMapper(IndustrialMapper industrialMapper) {
		this.industrialMapper = industrialMapper;
	}

}
