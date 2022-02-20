package com.avis.dojosandninjas.controllers;

import javax.persistence.Id;
import javax.swing.text.View;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.avis.dojosandninjas.models.Dojo;
import com.avis.dojosandninjas.models.Ninja;
import com.avis.dojosandninjas.services.WebService;

import net.bytebuddy.asm.Advice.This;

@Controller
public class AppController {
	private final WebService webService;
	
	public AppController(WebService webService) {
		this.webService = webService;
	}
	
	@RequestMapping("/")
	public String home(Model view) {
		view.addAttribute("dojo", new Dojo());
		view.addAttribute("showAllDojosDojo", this.webService.getAllDojos());
		return "home_page.jsp";
	}
	
	@PostMapping("/dojo/add")
	public String addDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		
		if(result.hasErrors()) {
			return "home_page.jsp";
		}else {
			this.webService.createDojo(dojo);	
			return "redirect:/";
		}
	}
//  Ninja pageNinja
	@RequestMapping("/ninja")
	public String ninjaPage(Model view) {
		view.addAttribute("ninja", new Ninja() );
		view.addAttribute("showAllDojosDojo", this.webService.getAllDojos());
		return "add_ninja_page.jsp";
	}
	
// add ninja
	@PostMapping("/ninja/add")
	public String addNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			return "add_ninja_page.jsp";
		}else {
			this.webService.createNinja(ninja);	
			return "redirect:/";
		}
	}
//dojo show page
	@RequestMapping("/dojo/show/{id}")
	public String showOneDojo( @PathVariable("id") Long id, Model view ) {
		view.addAttribute("dojo", this.webService.getOneDojo(id));
		
		return "showDojoInfo.jsp";
	}
		
	}

