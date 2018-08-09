package com.fihoca.gespro2.services;

import java.util.List;
import com.fihoca.gespro2.entities.Usuario;

public interface UsuarioService{
	public int deleteByPrimaryKey(String login);

    public int insert(Usuario record);

    public int insertSelective(Usuario record);

    public Usuario selectByPrimaryKey(String login);
    
    public List<Usuario> selectAll();

    public int updateByPrimaryKeySelective(Usuario record);

    public int updateByPrimaryKey(Usuario record);
}
