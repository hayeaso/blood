package com.bd.lifesavers.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bd.lifesavers.domain.Eligibility;
import com.bd.lifesavers.repository.IElegibilityRepository;
import com.bd.lifesavers.service.IEligibilityService;
@Service
@Transactional
public class EligibilityServiceImpl implements IEligibilityService {
	@Autowired
	IElegibilityRepository elegibilityRepository;
	
	
	@Override
	public void setEligibility(Long eligible) {
		Eligibility e= elegibilityRepository.findOne(eligible);
		e.setEligible(false);
		elegibilityRepository.save(e);
	}

}
