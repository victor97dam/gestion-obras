package com.fihoca.gespro2.controllers;

import java.util.ArrayList;
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
import com.fihoca.gespro2.services.FormaPagoService;
import com.fihoca.gespro2.services.IndustrialService;
import com.fihoca.gespro2.services.LimitacionesService;

@Controller
public class IndustrialController {
	@Autowired
	private IndustrialService industrialService;
	@Autowired
	private LimitacionesService limitacionesService;
	@Autowired
	private FormaPagoService formaPagoService;

	@RequestMapping("/industriales")
	public ModelAndView industriales() {
		List<Industrial> industriales = this.industrialService.selectAll();
		return new ModelAndView("industriales","industriales",industriales);
	}

	@RequestMapping("/industrial/nuevo")
	public ModelAndView industrialNuevo() {
		Industrial industrial = new Industrial();
		ModelAndView model = rellenarSelecionables();
		model.addObject("industrial",industrial);
		return model;
	}

	@RequestMapping(value = "/industrial/{id}", method = RequestMethod.GET)
	public ModelAndView industrial(@PathVariable int id) {
		Industrial industrial = this.industrialService.selectByPrimaryKey(id);
		ModelAndView model = rellenarSelecionables();
		model.addObject("industrial",industrial);
		return model;
	}

	@RequestMapping(value = "/industrial/guardar", method = RequestMethod.POST)
	public ModelAndView industrialguardar(@ModelAttribute("industrial")Industrial industrial) {
		if(industrial.getId()!=null && industrial.getId()!=0) this.industrialService.updateByPrimaryKeySelective(industrial);
		else this.industrialService.insert(industrial);
		return industriales();
	}

	@RequestMapping(value = "/industrial/{id}/baja", method = RequestMethod.GET)
	public ModelAndView industrialBaja(@PathVariable int id) {
		Industrial industrial = this.industrialService.selectByPrimaryKey(id);
		ModelAndView model = new ModelAndView("industrialbaja");
		model.addObject("industrial", industrial);
		return model;
	}



	@RequestMapping(value = "/industrial/{id}/eliminar", method = RequestMethod.GET)
	public ModelAndView industrialEliminar(@PathVariable int id) {
		this.industrialService.deleteByPrimaryKey(id);
		return industriales();
	}

	@RequestMapping("/industriales/alta")
	public ModelAndView alta() {
		List<Industrial> industriales = this.industrialService.selectAll();
		return new ModelAndView("industriales","industriales",industriales);
	}
	
	private ModelAndView rellenarSelecionables(){
		List<Limitaciones> limitaciones = this.limitacionesService.selectAll();
		List<Limitaciones> ivas = new ArrayList<Limitaciones>();
		List<Limitaciones> retenciones = new ArrayList<Limitaciones>();
		List<FormaPago> formasPago = this.formaPagoService.selectAll();
		for (Limitaciones l : limitaciones) {
			if("IVA".equals(l.getConcepto())){
				ivas.add(l);
			}else if ("RETENCION".equals(l.getConcepto())){
				retenciones.add(l);
			}

		}

		ModelAndView model = new ModelAndView("industrial");
		model.addObject("retenciones",retenciones);
		model.addObject("ivas",ivas);
		model.addObject("formasPago",formasPago);
		return model;
	}
}

