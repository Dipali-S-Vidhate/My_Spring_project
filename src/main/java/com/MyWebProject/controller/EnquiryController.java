package com.MyWebProject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.MyWebProject.DAO.EnquiryDao;
import com.MyWebProject.DAO.StudentDao;
import com.MyWebProject.Entity.Enquiry;
import com.MyWebProject.Entity.Student;



@Controller
public class EnquiryController {
	
	@Autowired
	StudentDao stdDao;
	
	@Autowired
	EnquiryDao enqDao;
	
	@RequestMapping("/EnquiryForm")
	public String enquiryForm(@RequestParam("sid" )int sid,Model model)
	{
		Student std =stdDao.getStudentDao(sid);
		model.addAttribute("std", std);
		
		return "Students/Enquiry";
	}
	
	@PostMapping ("/saveEnquiryData")
	public String saveEnquiryData(Enquiry enq , Model model)
	{	
		enqDao.saveEnqiuryDataDao(enq); // std
		model.addAttribute("msg", "Enquiry Save Successfully...");
		return "Students/Enquiry";
	}
	
	
	@RequestMapping("/MyAllEnquiry")
	public String MyAllEnquiry(@RequestParam("sid")int sid,Model model)
	{
		List<Enquiry> enq_list =enqDao.MyAllEnquiryDao(sid);
		model.addAttribute("enq_list", enq_list);
		
		return "Students/MyEnquiry";
	}
	//Enquiry  StudentData
	
	@RequestMapping("/ViewAllEnquiry")
	public String viewAllEnquiry(Model model) 
	{
		List<Enquiry> enq_list = enqDao.viewAllEnquiryDao();
		model.addAttribute("enq_list",enq_list);
		return "Admin/ViewEnquiry";
	}
	
	@RequestMapping("/SetRemark")
	public String  setRemark(@RequestParam("eid")int eid ,Model model)
	{
		Enquiry enq =enqDao.getEnquiry(eid);
		
		model.addAttribute("enq",enq);
		
		return "Admin/SetRemark";
	}
	
	@PostMapping("/SetRemarkSuccess")
	public String setRemarkSuccess(@RequestParam("eid")int eid,  Enquiry enq,Model model)
	{
		Enquiry result =enqDao.setRemarkSuccessDao(eid,enq);
		
		model.addAttribute("msg","Enquiry change Successfully.");
		  
	    return "Admin/SetRemark";
				
	}
	
	@GetMapping("/deleteEnquiry")
	public String deleteEnquiry(@RequestParam("eid")int eid,@RequestParam("sid") int sid,Model model) 
	{
		
		enqDao.deleteEnquiryDao(eid);
		List<Enquiry> enq_list = enqDao.MyAllEnquiryDao(sid);
		model.addAttribute("enq_list", enq_list);
		
		return "Students/MyEnquiry" ;
	}
	

}
