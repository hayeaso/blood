package com.bd.lifesavers.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bd.lifesavers.domain.Donor;
import com.bd.lifesavers.service.IDonorService;


@Controller
public class MemberController {
	
	@Autowired
	IDonorService donorService;
	
	
	@RequestMapping(value = "/members",method = RequestMethod.GET)
	public @ResponseBody List<Donor> message(){
		System.out.println("in get");
		List <Donor> donors=donorService.getDonors();
		for (Donor donor : donors) {
			System.out.println(donor.getAddress());
			
		}
		return donors;
		}
	
	
	@RequestMapping("/")
	public String welcome(){
		return "welcome";
	}
	
	@RequestMapping(value = "/register",method=RequestMethod.GET)
	public String register(@ModelAttribute("donor") Donor donor){
		System.out.println("****GET");
		return "register";
	}
	@RequestMapping(value = "/register",method=RequestMethod.POST)
	public String afterRegister(@ModelAttribute("donor") Donor donor ,BindingResult res, RedirectAttributes redirectattributes){
		if (res.hasErrors()) {
			//System.out.println("*******fuck off***");
			return "register";
		}
		
		donorService.saveDonor(donor);
		redirectattributes.addFlashAttribute(donor);
		
		return "redirect:/showDetails";
	}
	@RequestMapping(value = "/showDetails",method = RequestMethod.GET)
	public String showDetails(Model model ){
		return "showDetails";
	}
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login(Model model ){
		return "login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String afterLogin(HttpServletRequest request){
		String password = request.getParameter("password");
		String username = request.getParameter("username");
		String receivedPassword = donorService.getPassword(username);
		
		if(receivedPassword.equals(password)){
			return "showDetails";
		}
		return "login";
	}
	@RequestMapping(value= "/profile/{id}", method = RequestMethod.GET)
	public String myProfile(@ModelAttribute("donor") Donor donor, @PathVariable("id") long id, Model model){
		
		Donor one = donorService.getOneDonor(id);
		
		model.addAttribute("donor",one );
		model.addAttribute("id",id );
		return "editprofile";
		
	}
	@RequestMapping(value= "/profile", method = RequestMethod.POST)
	public String afterEdit(@ModelAttribute("donor") Donor donor, BindingResult bindingresult, Model model ){
		long donorId = donor.getId();
		System.out.println(donor.getId());
		donorService.updateDonor(donor);
		
		
		
		return "admin";
		
	}

}
