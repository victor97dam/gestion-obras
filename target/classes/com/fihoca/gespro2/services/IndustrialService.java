package com.fihoca.gespro2.services;

import java.util.List;
import com.fihoca.gespro2.entities.Industrial;

public interface IndustrialService{
	public int deleteByPrimaryKey(Integer id);

    public int insert(Industrial record);

    public int insertSelective(Industrial record);

    public Industrial selectByPrimaryKey(Integer id);
    
    public List<Industrial> selectAll();

    public int updateByPrimaryKeySelective(Industrial record);

    public int updateByPrimaryKey(Industrial record);
}
