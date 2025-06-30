package com.MyWebProject.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.MyWebProject.DAO.StudentDao;
import com.MyWebProject.Entity.Student;
import com.MyWebProject.Repository.StudentRepo;

@RequestMapping("/api/")
@RestController
public class API_Controller
{

	@Autowired
	StudentDao stdDao ;
	
	@Autowired
	StudentRepo stdRepo ;
	
	@RequestMapping("/getAllStudent")
	public List<Student> getAllStudent()
	{
		return  stdDao.getAllStudentsDao();
		
		//stdRepo.findAll();
	}
	
	@RequestMapping("/getMessage")
	public String getMessage()
	{
		return "Hello  spring boot";
	}
	
	//api with parameter
	
	@RequestMapping("/getStudentById/{sid}")
	public ResponseEntity<Student> getStudentById(@PathVariable int sid) 
	{
		return stdRepo.findById(sid)
				.map(ResponseEntity::ok)
				.orElse(ResponseEntity.notFound().build());
	}
	
	//delete by postman
	
	@DeleteMapping("/deleteById/{sid}")
	public  String  deleteById(@PathVariable int sid) 
	{
		Optional<Student> std =stdRepo.findById(sid);
		
		if(std.isPresent())
		{
		stdRepo.deleteById(sid);
		return"Student deleted successfully";
		}
		else
		{
		return "Student Record not found";
		}
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@RequestBody Student std)    //JSON   
	{
		stdRepo.save(std);
		return "Student data save successfully ";
	}
	
	@PutMapping("/updateStudent/{sid}")
	public String updatrStudent(@PathVariable int sid,@RequestBody Student stdNew)
	{
		Optional<Student> result =stdRepo.findById(sid);
		
		if(result.isPresent()) 
		{
			Student std =stdRepo.findById(sid).get();
			std.setName(stdNew.getName());
			std.setEmail(stdNew.getEmail());
			
			stdRepo.save(std);
			return " student updated successfully ";
		}
		else
		{
			return "No student found for update";
		}
	}
	
}
