package com.bd.lifesavers.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd.lifesavers.domain.Donor;
import com.bd.lifesavers.service.IDonorService;

@Controller
public class AdminController { 
	@Autowired
	IDonorService donorService;
	@RequestMapping(value = "/admin")
	public String admin(Model model, Donor donor){
		model.addAttribute("donors", donorService.getDonors());
		return "admin";
	}
	
	@RequestMapping(value = "/remove/{id}")
	public String removeMember(@PathVariable("id") int id){
		donorService.remove(id);
		return "redirect:/admin";
	}
}
