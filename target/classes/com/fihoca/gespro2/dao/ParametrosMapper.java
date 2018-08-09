package com.fihoca.gespro2.dao;

import com.fihoca.gespro2.entities.Parametros;

public interface ParametrosMapper {
    int deleteByPrimaryKey(String concepto);

    int insert(Parametros record);

    int insertSelective(Parametros record);

    Parametros selectByPrimaryKey(String concepto);

    int updateByPrimaryKeySelective(Parametros record);

    int updateByPrimaryKey(Parametros record);
}