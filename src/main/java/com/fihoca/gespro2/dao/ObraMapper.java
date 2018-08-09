package com.fihoca.gespro2.dao;

import com.fihoca.gespro2.entities.Obra;

public interface ObraMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Obra record);

    int insertSelective(Obra record);

    Obra selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Obra record);

    int updateByPrimaryKey(Obra record);
}