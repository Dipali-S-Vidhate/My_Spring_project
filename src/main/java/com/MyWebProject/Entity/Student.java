package com.MyWebProject.Entity;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class Student {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
    int sid;
	
	
	String name;
	String email;
	String gender;
	String course;
	String password;
	String status;
	String image;
	
	public Student(int sid, String name, String email, String gender ,String course, String password,String status,String image) {
		super();
		this.sid = sid;
		this.name = name;
		this.email = email;
		this.gender = gender;
		this.course=  course;
		this.password = password;
		this.status = status;
		this.image = image;
	}
	
	
	
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus(){
		return status;
	}
	public void setStatus(String status) {
	    this.status = status;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}



	@Override
	public String toString() {
		return "Student [sid=" + sid + ", name=" + name + ", email=" + email + ", gender=" + gender + ",course=" + course + ",password="
				+ password + ",status="+status+",image="+image+"]";
	}
	
	

	

}
