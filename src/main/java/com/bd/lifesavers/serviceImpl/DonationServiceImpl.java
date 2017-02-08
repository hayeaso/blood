package com.bd.lifesavers.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bd.lifesavers.domain.Donation;
import com.bd.lifesavers.domain.Donor;
import com.bd.lifesavers.repository.IDonationRepository;
import com.bd.lifesavers.service.IDonationService;

@Service
@Transactional
public class DonationServiceImpl implements IDonationService {
	@Autowired
	IDonationRepository donationRepo;

	public void save(Donation donation) {
		donationRepo.save(donation);
	}

	@Override
	public List<Donor> getReceiversByDonorId(Donor donor) {

		return donationRepo.getReceiversByDonorId(donor);
	}

	@Override
	public List<Donor> getDonorsByReceiverId(Donor receiver) {
		return donationRepo.getDonorsByReceiverId(receiver);
	}

}
