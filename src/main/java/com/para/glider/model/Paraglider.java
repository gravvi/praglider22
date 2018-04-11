package com.para.glider.model;

public class Paraglider {

	private int id ;
	private String name;
	private String kolor;
	private String date;
	private String manufacturer;
	private String price;

	public Paraglider() {
	}

	public Paraglider( String name, String kolor, String date, String manufacturer, String cena) {

		this.setName(name);
		this.setKolor(kolor);
		this.setDate(date);
		this.setManufacturer(manufacturer);
		this.setPrice(cena);

	}

	public String getDate() {
		return date;
	}

	public int getId() {
		return id;
	}

	public String getKolor() {
		return kolor;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public String getName() {
		return name;
	}

	public String getPrice() {
		return price;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setKolor(String kolor) {
		this.kolor = kolor;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setPrice(String price) {
		this.price = price;
	}
}
