package com.fihoca.gespro2.dao;

import java.util.List;

import com.fihoca.gespro2.entities.FormaPago;

public interface FormaPagoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(FormaPago record);

    int insertSelective(FormaPago record);

    FormaPago selectByPrimaryKey(Integer id);
    
    List<FormaPago> selectAll();

    int updateByPrimaryKeySelective(FormaPago record);

    int updateByPrimaryKey(FormaPago record);
}