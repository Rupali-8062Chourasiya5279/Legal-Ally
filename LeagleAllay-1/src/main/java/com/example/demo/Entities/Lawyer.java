package com.example.demo.Entities;
import java.util.Arrays;

import jakarta.persistence.*;

@Entity
public class Lawyer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String specialization;
    private String email;
    private String password;
    private String phone;
    
    private String imageName;
	private String imageType;
	@Lob
	private byte[] image;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSpecialization() {
		return specialization;
	}
	public void setSpecialization(String specialization) {
		this.specialization = specialization;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getImageType() {
		return imageType;
	}
	public void setImageType(String imageType) {
		this.imageType = imageType;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public Lawyer(String name, String specialization, String email, String password, String phone, String imageName,
			String imageType, byte[] image) {
		super();
		this.name = name;
		this.specialization = specialization;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.imageName = imageName;
		this.imageType = imageType;
		this.image = image;
	}
	public Lawyer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Lawyer [id=" + id + ", name=" + name + ", specialization=" + specialization + ", email=" + email
				+ ", password=" + password + ", phone=" + phone + ", imageName=" + imageName + ", imageType="
				+ imageType + ", image=" + Arrays.toString(image) + "]";
	}
	
	
    
}