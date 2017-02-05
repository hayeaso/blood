package com.bd.lifesavers.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Donor {
	@Id
	@GeneratedValue
	private long id;
	
	private String firstName;
	private String lastName;
	@OneToOne
	@JoinColumn(name="Address")
	private Address address;
	private String bloodType;
	private Date registrationDate;
	@OneToOne
	@JoinColumn(name = "Eligible")
	private Eligibility eligible;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public String getBloodType() {
		return bloodType;
	}
	public void setBloodType(String bloodType) {
		this.bloodType = bloodType;
	}
	public Date getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	public Eligibility getEligible() {
		return eligible;
	}
	public void setEligible(Eligibility eligible) {
		this.eligible = eligible;
	}
	
	

}
