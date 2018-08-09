package com.fihoca.gespro2.dao;

import java.util.List;

import com.fihoca.gespro2.entities.Usuario;

public interface UsuarioMapper {
    int deleteByPrimaryKey(String login);

    int insert(Usuario record);

    int insertSelective(Usuario record);
    
    List<Usuario> selectAll();

    Usuario selectByPrimaryKey(String login);

    int updateByPrimaryKeySelective(Usuario record);

    int updateByPrimaryKey(Usuario record);
}