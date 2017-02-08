package com.bd.lifesavers.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Donation {
	@Id
	@GeneratedValue
	@Column(name="donation_Id")
	private long id;
	@OneToOne
	@JoinColumn(name="Donation_Donor")
	private Donor donor;
	
	
	@OneToOne
	@JoinColumn(name="Donation_Receiver")
	private Donor receiver;
	
	
	private Date date;
	
	private boolean confirmed =false;
	
	public boolean isConfirmed() {
		return confirmed;
	}
	public void setConfirmed(boolean confirmed) {
		this.confirmed = confirmed;
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
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
	

}
