package com.fihoca.gespro2.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fihoca.gespro2.entities.FormaPago;
import com.fihoca.gespro2.entities.Industrial;
import com.fihoca.gespro2.entities.Limitaciones;
import com.fihoca.gespro2.entities.Usuario;
import com.fihoca.gespro2.services.FormaPagoService;
import com.fihoca.gespro2.services.IndustrialService;
import com.fihoca.gespro2.services.LimitacionesService;
import com.fihoca.gespro2.services.UsuarioService;

@Controller
public class UsuarioController {
	@Autowired
	private UsuarioService usuarioService;
	
	@RequestMapping("/usuarios")
	public ModelAndView usuarios() {
		List<Usuario> usuarios = this.usuarioService.selectAll();
		return new ModelAndView("usuarios","usuarios",usuarios);
	}
	@RequestMapping("/usuario/nuevo")
	public ModelAndView usuarioNuevo() {
		Usuario usuario = new Usuario();
		return new ModelAndView("usuario","usuario",usuario);
	}
	
	@RequestMapping(value = "/usuario/{login}", method = RequestMethod.GET)
	public ModelAndView limitacion(@PathVariable String login) {
		Usuario usuario = this.usuarioService.selectByPrimaryKey(login);
		return new ModelAndView("usuario","usuario",usuario);
	}
	
	@RequestMapping(value = "/usuario/guardar", method = RequestMethod.POST)
	public ModelAndView limitacionguardar(@ModelAttribute("usuario")Usuario usuario) {
		if(usuario.getLogin()!=null) this.usuarioService.updateByPrimaryKeySelective(usuario);
		else this.usuarioService.insert(usuario);
		return usuarios();
	}
	@RequestMapping(value = "/usuario/{login}/baja", method = RequestMethod.GET)
	public ModelAndView industrialBaja(@PathVariable String login) {
		Usuario usuario = this.usuarioService.selectByPrimaryKey(login);
		ModelAndView model = new ModelAndView("usuariobaja");
		model.addObject("usuario", usuario);
		return model;
	}
	
	@RequestMapping(value = "/usuario/{login}/eliminar", method = RequestMethod.GET)
	public ModelAndView industrialEliminar(@PathVariable String login) {
		this.usuarioService.deleteByPrimaryKey(login);
		return usuarios();
	}

	@RequestMapping("/usuarios/alta")
	public ModelAndView alta() {
		List<Usuario> usuarios = this.usuarioService.selectAll();
		return new ModelAndView("usuarios","usuarios",usuarios);
	}
	
}

