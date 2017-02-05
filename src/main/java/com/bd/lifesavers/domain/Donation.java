package com.bd.lifesavers.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Donation {
	@Id
	@GeneratedValue
//	
	private long id;
	@OneToOne
	@JoinColumn(name = "Donor")
	private Donor donor;
	@OneToOne
	@JoinColumn(name = "Receiver")
	private Donor receiver;
	private Date date;
	private boolean donationConfirmed;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Donor getDonor() {
		return donor;
	}
	public void setDonor(Donor donor) {
		this.donor = donor;
	}
	public Donor getReceiver() {
		return receiver;
	}
	public void setReceiver(Donor receiver) {
		this.receiver = receiver;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public boolean isDonationConfirmed() {
		return donationConfirmed;
	}
	public void setDonationConfirmed(boolean donationConfirmed) {
		this.donationConfirmed = donationConfirmed;
	}
	

}
