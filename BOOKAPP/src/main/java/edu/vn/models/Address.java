package edu.vn.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Address {
	@Id
	@Column(name = "address_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int addressId;
	@Column(nullable = false, name = "phone_number")
	private String phoneNumber;
	@Column(nullable = false, name = "city")
	private String city;
	@Column(nullable = false, name = "province")
	private String province;
	@Column(nullable = false, name = "ward")
	private String ward;
	@Column(nullable = false, name = "street")
	private String street;

	public Address(String phoneNumber, String city,
	    String province, String ward, String street) {
		super();
		this.phoneNumber = phoneNumber;
		this.city = city;
		this.province = province;
		this.ward = ward;
		this.street = street;
	}

	public Address() {
		super();
	}

	public int getAddressId() {
		return addressId;
	}

	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

}
