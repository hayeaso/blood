package com.bd.lifesavers.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bd.lifesavers.domain.BloodGroup;
import com.bd.lifesavers.domain.Donation;
import com.bd.lifesavers.domain.Donor;
import com.bd.lifesavers.service.IDonationService;
import com.bd.lifesavers.service.IDonorService;
import com.bd.lifesavers.service.IEligibilityService;
import com.bd.lifesavers.serviceImpl.CrunchifyEmailAPI;


@SessionAttributes({ "donorID", "username" })

@Controller
public class MemberController {
	
	
	@Autowired
	CrunchifyEmailAPI crunchifyEmailAPI;
	
	Long tempId;
	@Autowired
	IDonorService donorService;
	@Autowired
	IDonationService donationService;
	@Autowired
	IEligibilityService eligibilityService;
	
	@RequestMapping(value = "/requests/cancel/{id}")
	public String removeDonationRequest(@PathVariable("id") Long id) {
		
		donationService.deleteDonation(id);
		
		return "redirect:/requests";
	}
	
	@RequestMapping(value = "/requests/confirm/{id}")
	public String updateDonationRequest(@PathVariable("id") Long id) {
		donationService.updateDonation(id);
		eligibilityService.setEligibility(donationService.getDonation(id).getDonor().getEligible().getId());
		return "redirect:/requests";
	}
	
	@RequestMapping(value = "/demands/cancel/{id}")
	public String removeDonationDemands(@PathVariable("id") Long id) {
		
		donationService.deleteDonation(id);
		
		return "redirect:/demands";
	}

	// **************************Admin part instead of admin controller
	@RequestMapping(value = "/requests")
	public String requests(Model model, Donor donor) {
		List<Donation> donations = donationService.getDonationsByDonorId(donorService.getDonorById(tempId));
		model.addAttribute("donations", donations);
		return "requests";
	}

	@RequestMapping(value = "/demands")
	public String demands(Model model, Donor donor) {

		List<Donation> donations = donationService.getDonationsByReceiverId(donorService.getDonorById(tempId));
		model.addAttribute("donations", donations);
		return "demands";
	}

	@RequestMapping(value = "/members", method = RequestMethod.GET)
	public @ResponseBody List<Donor> message(@RequestParam("name") BloodGroup name, Model model) {

		List<Donor> donors = donorService.getDonorsByBloodGroup(name);
		List<Donor> donorstobeadded = new ArrayList<Donor>();
		for (Donor donor : donors) {
			if (donor.getId() != tempId) {
				if (donor.getEligible().isEligible()==true) {
					donorstobeadded.add(donor);
				}
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
		receiver = donorService.getDonorById(tempId);
		Date date = new Date();
		donation.setDonor(donor);
		donation.setReceiver(receiver);
		donation.setDate(date);
		donationService.save(donation);

		return "Your Request is Sent!";
	}

	@RequestMapping(value ={ "/","/home"})
	public String welcome() {
		return "welcome";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(@ModelAttribute("donor") Donor donor) {
		return "register";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String afterRegister(@Valid @ModelAttribute("donor") Donor donor, BindingResult res,
			RedirectAttributes redirectattributes) {
		if (res.hasErrors()) {
			System.out.println("it has errors");
			return "register";
		}
		
		
		/*if(!donorService.checkusername(donor.getUsername())){
			return "redirect:/register";
		}*/
		donorService.saveDonor(donor);
		redirectattributes.addFlashAttribute(donor);
		
		String receivedEmail = donor.getEmail();
		
		// @Service("crunchifyEmail") <-- same annotation you specified in CrunchifyEmailAPI.java
		
		String toAddr = receivedEmail;
		String fromAddr = "ranjansparrow@gmail.com";
 
		// email subject
		String subject = "Blood Donation";
 
		// email body
		String body = "Welcome to the Blood Donation Program. Now you can easily donate and receive the blood. -- Life Savers";
		System.out.println(" I am here !!  "+ toAddr);
		crunchifyEmailAPI.crunchifyReadyToSendEmail(toAddr, fromAddr, subject, body);
		

		return "redirect:/login";
	}

	@RequestMapping(value = "/showDetails", method = RequestMethod.GET)
	public String showDetails(@ModelAttribute("person") Donor person, Model model) {
		return "showDetails";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String afterLogin(HttpServletRequest request, Model model) {
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String receivedPassword = donorService.getPassword(username);

		if (!receivedPassword.equals(password)) {
			return "login";
		}
		tempId = donorService.getIdByUsername(username);
		model.addAttribute("username", username);
		model.addAttribute("donorID", tempId);
		return "redirect:/showDetails";
	}

	@RequestMapping(value = "/profile/{id}", method = RequestMethod.GET)
	public String myProfile(@ModelAttribute("donor") Donor donor, @PathVariable("id") long id, Model model) {

		donor = donorService.getDonorById(id);
		Date date = donor.getRegistrationDate();
		model.addAttribute("registrationDate", date);
		model.addAttribute("donor", donor);
		model.addAttribute("id", id);
		return "editprofile";

	}

	@RequestMapping(value = "/profile", method = RequestMethod.POST)
	public String afterEdit(@Valid @ModelAttribute("donor") Donor donor, BindingResult bindingresult, Model model,
			HttpServletRequest request) {

		if (bindingresult.hasErrors()) {
			return "editprofile";
		}
		String registrationDate = request.getParameter("registrationDate");
		DateFormat format = new SimpleDateFormat("yyyy-M-dd");

		try {
			Date date = format.parse(registrationDate);
			donor.setRegistrationDate(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}

		donorService.updateDonor(donor);

		return "redirect:/admin";

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutClicked(SessionStatus status) {
		status.setComplete();
		return "redirect:/";

	}
	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public String changePassword(Model model , Donor donor ) {
		
		
		return "updatepassword";

	}
	@RequestMapping(value = "/afterchange", method = RequestMethod.POST)
	public String afterchangePassword(Model model , Donor donor, HttpServletRequest request ) {
		
		 donor = donorService.getDonorById(tempId);
		
		 String username = donor.getUsername();
		 String dbpassword = donorService.getPassword(username);
		 
		 
		String rpassword = request.getParameter("password");
		
		if(dbpassword.equals(rpassword)){
			String cpass = request.getParameter("confirmNewPassword");
			
			donorService.updatePassword(cpass, tempId);
			return "redirect:/logout";
		}
		
		return "redirect:/changepassword";

	}

}
