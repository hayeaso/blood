package com.bd.lifesavers.domain;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Transient;

@Entity
public class Donation {
	@Id
	@GeneratedValue
	@Column(name="donation_Id")
	private long id;
	@OneToMany
	@JoinTable(name="Donation_Donor",
	      joinColumns={ @JoinColumn(name="donation_Id") },
	      inverseJoinColumns={ @JoinColumn(name="donor_Id") })
	private List<Donor> donors;
	
	
	@OneToMany
	  @JoinTable(name="Donation_Receiver",
	      joinColumns={ @JoinColumn(name="donation_Id") },
	      inverseJoinColumns={ @JoinColumn(name="donor_Id") })
	private List<Donor> receivers;
	private Date date;
	private boolean donationConfirmed;
	
	@Transient
	private Donor donor;
	
	@Transient
	private Donor receiver;
	
	
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
	public boolean isDonationConfirmed() {
		return donationConfirmed;
	}
	public void setDonationConfirmed(boolean donationConfirmed) {
		this.donationConfirmed = donationConfirmed;
	}
	
	public List<Donor> getReceivers() {
		return receivers;
	}
	public void setReceivers(List<Donor> receivers) {
		this.receivers = receivers;
	}
	public List<Donor> getDonors() {
		return donors;
	}
	public void setDonors(List<Donor> donors) {
		this.donors = donors;
	}
	public Donor getDonor() {
		return donors.get(0);
	}
	
	public Donor getReceiver() {
		return receiver;
	}
	
	
	
	

}
