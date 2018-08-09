package com.fihoca.gespro2.services;

import java.util.List;
import com.fihoca.gespro2.entities.Limitaciones;

public interface LimitacionesService{
	public int deleteByPrimaryKey(Integer id);

    public int insert(Limitaciones record);

    public int insertSelective(Limitaciones record);

    public Limitaciones selectByPrimaryKey(Integer id);
    
    public List<Limitaciones> selectAll();

    public int updateByPrimaryKeySelective(Limitaciones record);

    public int updateByPrimaryKey(Limitaciones record);
}
