package com.fihoca.gespro2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fihoca.gespro2.dao.FormaPagoMapper;
import com.fihoca.gespro2.entities.FormaPago;

@Service
public class FormaPagoServiceImpl implements FormaPagoService{
	@Autowired
	private FormaPagoMapper formaPagoMapper;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return this.formaPagoMapper.deleteByPrimaryKey(id);
	}
	@Override
	public int insert(FormaPago record) {
		return this.formaPagoMapper.insert(record);
	}

	@Override
	public int insertSelective(FormaPago record) {
		return this.formaPagoMapper.insertSelective(record);
	}

	@Override
	public FormaPago selectByPrimaryKey(Integer id) {
		return formaPagoMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<FormaPago> selectAll() {
		return this.formaPagoMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKeySelective(FormaPago record) {
		return this.formaPagoMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(FormaPago record) {
		return this.formaPagoMapper.updateByPrimaryKey(record);
	}
	public void setFormaPagoMapper(FormaPagoMapper formaPagoMapper) {
		this.formaPagoMapper = formaPagoMapper;
	}

}
