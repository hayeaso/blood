package com.bd.lifesavers.controller;

import java.util.List;

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
		List<Donor> don = donorService.getDonors();
		model.addAttribute("donors", donorService.getDonors());
		System.out.println("**********");
		
		return "admin";
	}
	
	@RequestMapping(value = "/remove/{id}")
	public String removeMember(@PathVariable("id") int id){
		System.out.println("************");
		donorService.remove(id);
		return "redirect:/admin";
	}
}
