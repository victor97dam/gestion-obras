package com.fihoca.gespro2.dao;

import java.util.List;

import com.fihoca.gespro2.entities.Limitaciones;

public interface LimitacionesMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Limitaciones record);

    int insertSelective(Limitaciones record);

    Limitaciones selectByPrimaryKey(Integer id);
    
    List<Limitaciones> selectAll();

    int updateByPrimaryKeySelective(Limitaciones record);

    int updateByPrimaryKey(Limitaciones record);
}