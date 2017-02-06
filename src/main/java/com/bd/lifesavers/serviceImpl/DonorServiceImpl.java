package com.bd.lifesavers.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

}
