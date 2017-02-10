package com.bd.lifesavers.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bd.lifesavers.domain.BloodGroup;
import com.bd.lifesavers.domain.Donor;

@Service
@Transactional
public interface IDonorService {
	
public void saveDonor(Donor donor);
	
	public String getPassword(String username);

	public List<Donor> getDonors();
	
	public void remove(Long id);
	
	public Donor getDonorById(Long id);
	
	public List<Donor> getDonorsByBloodGroup(BloodGroup name);

	public void updateDonor(Donor donor);

	public Long getIdByUsername(String username);
	
	public void updatePassword(String password , Long id);
	
	public boolean checkusername(String username);

}
