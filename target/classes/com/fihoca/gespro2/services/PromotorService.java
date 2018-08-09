package com.fihoca.gespro2.services;

import java.util.List;
import com.fihoca.gespro2.entities.Promotor;

public interface PromotorService{
	public int deleteByPrimaryKey(int id);

    public int insert(Promotor record);

    public int insertSelective(Promotor record);

    public Promotor selectByPrimaryKey(int id);
    
    public List<Promotor> selectAll();

    public int updateByPrimaryKeySelective(Promotor record);

    public int updateByPrimaryKey(Promotor record);
}
