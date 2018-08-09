package com.fihoca.gespro2.dao;

import com.fihoca.gespro2.entities.Presupuesto;

public interface PresupuestoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Presupuesto record);

    int insertSelective(Presupuesto record);

    Presupuesto selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Presupuesto record);

    int updateByPrimaryKey(Presupuesto record);
}