package com.fihoca.gespro2.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fihoca.gespro2.entities.Promotor;
import com.fihoca.gespro2.services.PromotorService;

@Controller
public class PromotorController {
	@Autowired
	private PromotorService promotorService;
	
	@RequestMapping("/promotores")
	public ModelAndView promotores() {
		List<Promotor> promotores = this.promotorService.selectAll();
		return new ModelAndView("promotores","promotores",promotores);
	}
	@RequestMapping("/promotor/nuevo")
	public ModelAndView promotorNuevo() {
		Promotor promotor = new Promotor();
		return new ModelAndView("promotor","promotor",promotor);
	}
	
	@RequestMapping(value = "/promotor/{id}", method = RequestMethod.GET)
	public ModelAndView promotor(@PathVariable int id) {
		Promotor promotor = this.promotorService.selectByPrimaryKey(id);
		return new ModelAndView("promotor","promotor",promotor);
	}
	
	@RequestMapping(value = "/promotor/guardar", method = RequestMethod.POST)
	public ModelAndView promotorguardar(@ModelAttribute("promotor")Promotor promotor) {
		if(promotor.getId()!=null) this.promotorService.updateByPrimaryKeySelective(promotor);
		else this.promotorService.insert(promotor);
		return promotores();
	}
	@RequestMapping(value = "/promotor/{id}/baja", method = RequestMethod.GET)
	public ModelAndView industrialBaja(@PathVariable int id) {
		Promotor promotor = this.promotorService.selectByPrimaryKey(id);
		ModelAndView model = new ModelAndView("promotorbaja");
		model.addObject("promotor", promotor);
		return model;
	}
	
	@RequestMapping(value = "/promotor/{id}/eliminar", method = RequestMethod.GET)
	public ModelAndView industrialEliminar(@PathVariable int id) {
		this.promotorService.deleteByPrimaryKey(id);
		return promotores();
	}

	@RequestMapping("/promotores/alta")
	public ModelAndView alta() {
		List<Promotor> promotores = this.promotorService.selectAll();
		return new ModelAndView("promotores","promotores",promotores);
	}
	
}

