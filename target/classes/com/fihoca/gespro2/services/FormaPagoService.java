package com.fihoca.gespro2.services;

import java.util.List;
import com.fihoca.gespro2.entities.FormaPago;

public interface FormaPagoService{
	public int deleteByPrimaryKey(Integer id);

    public int insert(FormaPago record);

    public int insertSelective(FormaPago record);

    public FormaPago selectByPrimaryKey(Integer id);
    
    public List<FormaPago> selectAll();

    public int updateByPrimaryKeySelective(FormaPago record);

    public int updateByPrimaryKey(FormaPago record);
}
