package com.fihoca.gespro2.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fihoca.gespro2.dao.UsuarioMapper;
import com.fihoca.gespro2.entities.Usuario;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	@Autowired
	private UsuarioMapper usuarioMapper;
	
	@Override
	public int deleteByPrimaryKey(String login) {
		return this.usuarioMapper.deleteByPrimaryKey(login);
	}
	@Override
	public int insert(Usuario record) {
		return this.usuarioMapper.insert(record);
	}

	@Override
	public int insertSelective(Usuario record) {
		return this.usuarioMapper.insertSelective(record);
	}

	@Override
	public Usuario selectByPrimaryKey(String login) {
		return usuarioMapper.selectByPrimaryKey(login);
	}

	@Override
	public List<Usuario> selectAll() {
		return this.usuarioMapper.selectAll();
	}

	@Override
	public int updateByPrimaryKeySelective(Usuario record) {
		return this.usuarioMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Usuario record) {
		return this.usuarioMapper.updateByPrimaryKey(record);
	}
	public void setUsuarioMapper(UsuarioMapper usuarioMapper) {
		this.usuarioMapper = usuarioMapper;
	}

}
