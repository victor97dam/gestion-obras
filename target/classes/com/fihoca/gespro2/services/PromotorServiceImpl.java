package com.fihoca.gespro2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fihoca.gespro2.dao.PromotorMapper;
import com.fihoca.gespro2.entities.Promotor;

@Service
public class PromotorServiceImpl implements PromotorService{
	@Autowired
	private PromotorMapper promotorMapper;
	
	@Override
	public int deleteByPrimaryKey(int id) {
		return this.promotorMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Promotor record) {
		return this.promotorMapper.insert(record);
	}

	@Override
	public int insertSelective(Promotor record) {
		return this.promotorMapper.insertSelective(record);
	}

	@Override
	public Promotor selectByPrimaryKey(int id) {
		return promotorMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Promotor> selectAll() {
		return this.promotorMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKeySelective(Promotor record) {
		return this.promotorMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Promotor record) {
		return this.promotorMapper.updateByPrimaryKey(record);
	}
	public void setPromotorMapper(PromotorMapper promotorMapper) {
		this.promotorMapper = promotorMapper;
	}

}
