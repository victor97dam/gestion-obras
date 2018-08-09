package com.fihoca.gespro2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fihoca.gespro2.dao.LimitacionesMapper;
import com.fihoca.gespro2.entities.Limitaciones;

@Service
public class LimitacionesServiceImpl implements LimitacionesService{
	@Autowired
	private LimitacionesMapper limitacionesMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return this.limitacionesMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(Limitaciones record) {
		return this.limitacionesMapper.insert(record);
	}

	@Override
	public int insertSelective(Limitaciones record) {
		return this.limitacionesMapper.insertSelective(record);
	}

	@Override
	public Limitaciones selectByPrimaryKey(Integer id) {
		return limitacionesMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Limitaciones> selectAll() {
		return this.limitacionesMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKeySelective(Limitaciones record) {
		return this.limitacionesMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Limitaciones record) {
		return this.limitacionesMapper.updateByPrimaryKey(record);
	}
	public void setLimitacionesMapper(LimitacionesMapper limitacionesMapper) {
		this.limitacionesMapper = limitacionesMapper;
	}

}
