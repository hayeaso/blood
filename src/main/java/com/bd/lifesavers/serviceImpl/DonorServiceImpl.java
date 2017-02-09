package com.bd.lifesavers.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bd.lifesavers.domain.BloodGroup;
import com.bd.lifesavers.domain.Donor;
import com.bd.lifesavers.repository.IDonorRepository;
import com.bd.lifesavers.service.IDonorService;
@Service
@Transactional
public class DonorServiceImpl implements IDonorService {

	@Autowired
	IDonorRepository donorrepo;
	@Override
	public void saveDonor(Donor donor) {
		donorrepo.save(donor);
		
	}
	@Override
	public String getPassword(String username) {
		
		String res =donorrepo.checkLogin(username);
		return res;
	}
	@Override
	public List<Donor> getDonors() {
		
		return (List<Donor>) donorrepo.findAll();
	}
	@Override
	public void remove(Long id) {
		donorrepo.delete(id);
		
	}
	@Override
	public List<Donor> getDonorsByBloodGroup(BloodGroup name) {
		return donorrepo.getByBloodGroup(name);
	}
	@Override
	public Donor getDonorById(Long id) {
		// TODO Auto-generated method stub
		return donorrepo.findOne(id);
	}
	@Override
	public void updateDonor(Donor donor) {
		donorrepo.save(donor);
		
	}
	@Override
	public Long getIdByUsername(String username) {
		
		return donorrepo.getIdByUsername(username);
	}
	
	@Override
	public void updatePassword(String password, Long id) {
		System.out.println("id is :"+id +"and pwd :"+password);
		Donor d=donorrepo.findOne(id);
		d.setPassword(password);
		System.out.println("pwd setted");
		donorrepo.save(d);
		System.out.println("done");
	}


}
