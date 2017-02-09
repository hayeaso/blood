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
	public List<Donation> getDonationsByReceiverId(Donor receiver) {
		return donationRepo.getDonationsByReceiverId(receiver);
	}

	@Override
	public List<Donation> getDonationsByDonorId(Donor donorId) {
		return donationRepo.getDonationsByDonorId(donorId);
	}

	@Override
	public void removeByMemberId(List<Donation> donations, List<Donation> donations2) {
		for (Donation donation : donations) {
			donationRepo.delete(donation);
		}
		for (Donation donation : donations2) {
			donationRepo.delete(donation);
		}
	}

	@Override
	public void deleteDonation(Long id) {
		donationRepo.delete(id);
		
	}

	@Override
	public void updateDonation(Long id) {
		
		Donation d =donationRepo.findOne(id);
		d.setConfirmed(true);
		donationRepo.save(d);
		
	}

	@Override
	public Donation getDonation(Long id) {
		
		return donationRepo.findOne(id);
	}
}
