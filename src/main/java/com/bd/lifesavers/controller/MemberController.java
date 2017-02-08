package com.bd.lifesavers.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bd.lifesavers.domain.BloodGroup;
import com.bd.lifesavers.domain.Donation;
import com.bd.lifesavers.domain.Donor;
import com.bd.lifesavers.service.IDonationService;
import com.bd.lifesavers.service.IDonorService;

@Controller
public class MemberController {
	Long tempID = 2L;
	@Autowired
	IDonorService donorService;
	@Autowired
	IDonationService donationService;

	@RequestMapping(value = "/members", method = RequestMethod.GET)
	public @ResponseBody List<Donor> message(@RequestParam("name") BloodGroup name, Model model) {

		List<Donor> donors = donorService.getDonorsByBloodGroup(name);
		List<Donor> donorstobeadded = new ArrayList<Donor>();
		for (Donor donor : donors) {
			if (donor.getId() != tempID) {
				donorstobeadded.add(donor);
			}
		}
		return donorstobeadded;
	}

	@RequestMapping(value = "/requestBloodDonation", method = RequestMethod.GET)
	public @ResponseBody String requestBloodDonation(@RequestParam("id") Long id, Model model) {
		Donation donation = new Donation();
		Donor donor = new Donor();
		Donor receiver = new Donor();
		donor = donorService.getDonorById(id);
		receiver = donorService.getDonorById(tempID);
		Date date = new Date();
		System.out.println(date);
		donation.setDonor(donor);
		donation.setReceiver(receiver);
		donation.setDate(date);
		System.out.println(date + "Donor:" + donation.getDonor().getFirstName() + "   receiver:"
				+ donation.getReceiver().getFirstName());
		donationService.save(donation);

		return "Your Request is Sent!";
	}

	@RequestMapping("/")
	public String welcome() {
		return "welcome";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(@ModelAttribute("donor") Donor donor) {
		System.out.println("****GET");
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String afterRegister(@ModelAttribute("donor") Donor donor, BindingResult res,
			RedirectAttributes redirectattributes) {
		if (res.hasErrors()) {
			// System.out.println("*******fuck off***");
			return "register";
		}

		donorService.saveDonor(donor);
		redirectattributes.addFlashAttribute(donor);

		return "redirect:/showDetails";
	}

	@RequestMapping(value = "/showDetails", method = RequestMethod.GET)
	public String showDetails(@ModelAttribute("person")Donor person, Model model) {
		return "showDetails";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String afterLogin(HttpServletRequest request) {
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String receivedPassword = donorService.getPassword(username);

		if (!receivedPassword.equals(password)) {
			return "login";
		}
		return "redirect:/showDetails";
	}

	@RequestMapping(value = "/profile/{id}", method = RequestMethod.GET)
	public String myProfile(@ModelAttribute("donor") Donor donor, @PathVariable("id") long id, Model model) {

		donor= donorService.getDonorById(id);
		Date date =donor.getRegistrationDate();
		model.addAttribute("registrationDate", date);
		model.addAttribute("donor", donor);
		model.addAttribute("id", id);
		return "editprofile";

	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String afterEdit(@ModelAttribute("donor") Donor donor, BindingResult bindingresult, Model model, HttpServletRequest request) {
		
		
		String registrationDate =  request.getParameter("registrationDate");
		DateFormat format = new SimpleDateFormat("yyyy-M-dd");
		
		try {
			Date date = format.parse(registrationDate);
			System.out.println(date);
			donor.setRegistrationDate(date);
		} catch (ParseException e) {
			System.out.println("ohhhh shit");
			e.printStackTrace();
		}
		
		
		if (bindingresult.hasErrors()) {
			
			System.out.println("errrrros");
		}
		
		donorService.updateDonor(donor);

		return "redirect:/admin";

	}

}
