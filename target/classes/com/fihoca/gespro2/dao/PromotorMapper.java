package com.fihoca.gespro2.dao;

import java.util.List;

import com.fihoca.gespro2.entities.Promotor;

public interface PromotorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Promotor record);

    int insertSelective(Promotor record);

    Promotor selectByPrimaryKey(Integer id);
    
    List<Promotor> selectAll();

    int updateByPrimaryKeySelective(Promotor record);

    int updateByPrimaryKey(Promotor record);
}