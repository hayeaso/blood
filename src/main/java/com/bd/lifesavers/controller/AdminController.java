package com.bd.lifesavers.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bd.lifesavers.domain.Donation;
import com.bd.lifesavers.domain.Donor;
import com.bd.lifesavers.service.IDonationService;
import com.bd.lifesavers.service.IDonorService;

@Controller
public class AdminController {

	@Autowired
	IDonorService donorService;
	@Autowired
	IDonationService donationService;
	// Admin part instead of admin controller
	@RequestMapping(value = "/admin")
	public String admin(Model model, Donor donor) {
		model.addAttribute("donors", donorService.getDonors());
		return "admin";
	}
	
	@RequestMapping(value = "/remove/{id}")
	public String removeMember(@PathVariable("id") Long id) {

		List<Donation> donations = donationService.getDonationsByDonorId(donorService.getDonorById(id));
		List<Donation> donations2 = donationService.getDonationsByReceiverId(donorService.getDonorById(id));

		donationService.removeByMemberId(donations, donations2);
		System.out.println("done of Donations");
		donorService.remove(id);
		System.out.println("done of Donors");
		return "redirect:/admin";
	}
}
