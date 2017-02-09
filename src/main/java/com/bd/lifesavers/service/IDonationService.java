package com.bd.lifesavers.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bd.lifesavers.domain.Donation;
import com.bd.lifesavers.domain.Donor;

@Service
@Transactional
public interface IDonationService {
	public void save(Donation donation);

	public List<Donation> getDonationsByReceiverId(Donor receiverId);

	public List<Donation> getDonationsByDonorId(Donor donorById);

	
	
	public void removeByMemberId(List<Donation> donations, List<Donation> donations2);

	public void deleteDonation(Long id);

	public void updateDonation(Long id);

	public Donation getDonation(Long id);
}
