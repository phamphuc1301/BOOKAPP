package edu.vn.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Book {
	@Id
	private String iSBN;
	private String name;
	private String publisher;
	private double price;
	private double actualPrice;
	private String description;
	private String image;
	@OneToOne
	private Category category;

	public Book(String iSBN, String name, String publisher, double price,
	    double actualPrice, String description, String image, Category category) {
		super();
		this.iSBN = iSBN;
		this.name = name;
		this.publisher = publisher;
		this.price = price;
		this.actualPrice = actualPrice;
		this.description = description;
		this.image = image;
		this.category = category;
	}

	public Book() {
		super();
	}

	public String getiSBN() {
		return iSBN;
	}

	public void setiSBN(String iSBN) {
		this.iSBN = iSBN;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getActualPrice() {
		return actualPrice;
	}

	public void setActualPrice(double actualPrice) {
		this.actualPrice = actualPrice;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

}
