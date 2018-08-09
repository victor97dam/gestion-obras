package com.fihoca.gespro2.dao;

import java.util.List;

import com.fihoca.gespro2.entities.Industrial;

public interface IndustrialMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Industrial record);

    int insertSelective(Industrial record);
    
    List<Industrial> selectAll();
    
    Industrial selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Industrial record);

    int updateByPrimaryKey(Industrial record);
}