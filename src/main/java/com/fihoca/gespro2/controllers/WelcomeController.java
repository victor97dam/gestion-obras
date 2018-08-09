package com.fihoca.gespro2.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fihoca.gespro2.dao.LimitacionesMapper;
import com.fihoca.gespro2.dao.ObraMapper;
import com.fihoca.gespro2.entities.Limitaciones;


@Controller
public class WelcomeController {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
		@RequestParam(value = "logout", required = false) String logout, @RequestParam(value = "login", required = false) String username) {

	  ModelAndView model = new ModelAndView();
	  if (error != null) {
		model.addObject("error", "Nombre de usuario o contraseña incorrectos");
	  }
	  if (logout != null) {
		model.addObject("logout", "You've been logged out successfully.");
	  }
	  model.setViewName("login");

	  return model;

	}
	 
	 @RequestMapping(value = "/home", method = RequestMethod.GET)
	    public ModelAndView home(@RequestParam(value = "obra_activa", required = false) String obra_activa) {
		 ModelAndView model = new ModelAndView();
		 if (obra_activa != null) {
				model.addObject("obra_activa", obra_activa);
			  }
			  model.setViewName("home");
	        return model;
	    }
	    
	
	@RequestMapping("/index")
	public ModelAndView index() {

		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from comeController.java **********</div><br><br>";
		return new ModelAndView("index", "message", message);
	}
	
	@RequestMapping("/obras")
	public ModelAndView obras() {

		String estado_obras = "A";
		return new ModelAndView("obras", "estado_obras", estado_obras);
	}
	
	@RequestMapping("/presupuestos")
	public ModelAndView presupuestos() {

		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from comeController.java **********</div><br><br>";
		return new ModelAndView("presupuestos", "message", message);
	}
	
	@RequestMapping("/certificaciones")
	public ModelAndView certificaciones() {

		String message = "<br><div style='text-align:center;'>"
				+ "<h3>********** Hello World, Spring MVC Tutorial</h3>This message is coming from comeController.java **********</div><br><br>";
		return new ModelAndView("certificaciones", "message", message);
	}
	
	
	
	
}