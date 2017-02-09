package com.bd.lifesavers.domain;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Donor {
	@Override
	public String toString() {
		return "Donor [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", address=" + address
				+ ", registrationDate=" + registrationDate + ", eligible=" + eligible + ", bloodGroup=" + bloodGroup
				+ ", email=" + email + ", username=" + username + ", password=" + password + "]";
	}
	@Id
	@GeneratedValue
	@Column(name="donor_Id")
	private long id;
	
	@NotEmpty
	@Size(min = 4 , max = 50  , message = "{Size.firstName.validation}")
	private String firstName;
	
	@NotEmpty
	@Size(min = 4 , max = 50  , message = "{Size.lastName.validation}")
	private String lastName;
	
	@Valid
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="Address")
	private Address address;
	
	@NotNull
	@DateTimeFormat(pattern = "yyyy-M-dd")
	private Date registrationDate;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "Eligible")
	private Eligibility eligible;
	
	@Enumerated(EnumType.STRING)
	private BloodGroup bloodGroup;
	
	@NotEmpty
	@Email
	private String email;
	
	@NotEmpty
	private String username;
	
	@NotEmpty
	private String password;
	
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
	public BloodGroup getBloodGroup() {
		return bloodGroup;
	}
	public void setBloodGroup(BloodGroup bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
