package com.bd.lifesavers.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
//@Entity
public class DonationConfirmed {

//	@Id
//	@GeneratedValue
	private long id;
	
	private Donor donor;
	private Donor receiver;
	private Date date;
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
	
}
