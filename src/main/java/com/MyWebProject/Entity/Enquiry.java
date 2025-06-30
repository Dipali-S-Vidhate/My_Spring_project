package com.MyWebProject.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

@Entity
public class Enquiry {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	int eid;
	
	@ManyToOne
	@JoinColumn(name="sid")
	private Student student;
	
	
	String message ;
	String edate ;
	String remark ;

	
	

	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
	public Enquiry() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Enquiry(int eid, String message, String edate, String remark) {
		super();
		this.eid = eid;
		this.message = message;
		this.edate = edate;
		this.remark = remark;
	}
	
	
	
	
	
}
