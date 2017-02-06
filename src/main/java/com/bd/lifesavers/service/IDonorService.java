package com.bd.lifesavers.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bd.lifesavers.domain.Donor;

@Service
@Transactional
public interface IDonorService {
	
	public void saveDonor(Donor donor);
	
	public String getPassword(String username);

}
