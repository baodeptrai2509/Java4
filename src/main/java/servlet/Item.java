package servlet;

import java.util.Date;

public class Item {
	Integer id;
	String name;
	String image;
	int price;
	double discount;
	Date date = new Date();
	public int getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public Item(Integer id, String name, String image, int price, double discount) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.discount = discount;
	}

	
	
	
	

}