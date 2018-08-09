package com.fihoca.gespro2.dao;

import com.fihoca.gespro2.entities.Capitulo;

public interface CapituloMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Capitulo record);

    int insertSelective(Capitulo record);

    Capitulo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Capitulo record);

    int updateByPrimaryKey(Capitulo record);
}