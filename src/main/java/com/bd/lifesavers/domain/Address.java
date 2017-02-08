package com.bd.lifesavers.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Address")
public class Address {
	@Override
	public String toString() {
		return street + "," + city + "," + state;
	}
	@Id
	@GeneratedValue
	private Long id;
	@NotEmpty
	@Size(min=4, message="Size.street")
	private String street;
	@NotEmpty
	@Size(min=4, message="Size.city")
	private String city;
	@NotEmpty
	@Size(min=2, max=2, message="Size.state")
	private String state;
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
	
}
