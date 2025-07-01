package com.MyWebProject.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.MyWebProject.DAO.StudentDao;
import com.MyWebProject.Entity.Student;



@ Controller
public class Mycontroller {
	@Autowired
	public StudentDao stdDao;
	

	@RequestMapping("/Demo")
	public String home() {
		
		return "Home1";
	}

	@RequestMapping("/signup")
    public String signup(Model model)
	{
		model.addAttribute("std", new Student());
    	return "signup";
    }
	

	@PostMapping("/saveData")//registration
	public String saveData(@ModelAttribute Student std , MultipartFile imageFile, Model model )
	{
		try {
		stdDao.saveDataDao(std,imageFile);
		model.addAttribute("msg","Registration successful");
		}
		
		catch(Exception e) {
			
		System.out.println(e.toString());
		}
		return "signup";
		
	}
	
	@RequestMapping("/signIN")
	public String signin() {
		return "signin";
	}

/*	@RequestMapping("/AdminSignIn")
	public String adminsignin()
	{
		return "AdminSignin";
	}
	*/
	@GetMapping("/checkSignIn")
	public String checkSignIn(String Type,String email,String password,Model model) 
	{
		if(Type.equals("Admin"))
		{
	
	      if(email.equals("admin@gamil.com") && password.equals("super"))
	      {
		  return "Admin/Admin_Home";
	      }
		
		  else 
		  {
			model.addAttribute("errormsg","Invalid Admin" );
			return "signin";

		  }
	  }
		else {
		Student std=stdDao.checkSignInDao(email,password);
		
	if(std !=null)
	{
		
		if(std.getStatus().equals("Accept"))
		{
			model.addAttribute("std",std);
			return "Students/Student_Home"; //student_Home.jsp
		}
		else
		{
			model.addAttribute("errormsg","your status is pending" );
			return "signin";
		}
	}
	else
	{
		model.addAttribute("errormsg","Invalid Email or passward..." );
		return "signin";
	}
	}
}
	
	@ResponseBody
	@RequestMapping("/viewAllStudentsData")
	public List<Student> getAllStudentData(Model model)
	{
		
	List<Student> stud_list=	stdDao.getAllStudentsDao();
	model.addAttribute("stud_list",stud_list);
	return stud_list;
	}
	
	
	@RequestMapping("/viewAllStudentsPage")
	public String getAllStudentPage(Model model)
	{
	List<Student> stud_list=	stdDao.getAllStudentsDao();
	model.addAttribute("stud_list",stud_list);
	return "Admin/StudentList";
	}
	
	/*@ResponseBody
	@RequestMapping("/viewStudent")
    public  Optional<Student>  getStudent(int sid ,Model model) 
	{
        Optional<Student> std = stdDao.getStudentDao(sid);
		return std;
	}
*/
	@RequestMapping("/getAdminHomePage")
	public String getAdminHomePage()
	{
		return "Admin/Admin_Home";
	}
	
	@RequestMapping("/getStudentHomePage")
	public String getStudentHomePage(@RequestParam ("sid")int sid,Model model )
	{
		Student std =stdDao.getStudentDao(sid);
		model.addAttribute("std", std);
		return "Students/Student_Home";
	}
	
	
	@RequestMapping("/StudentEdit")
	public String StudentEdit(@RequestParam("sid")int sid , Model model)
	{
		Student std =stdDao.getStudentDao(sid);
		model.addAttribute("std", std);
		return "Admin/SignupEdit";
	}
	
	
	@PostMapping("/StudentEditSuccess")
	public String StudentEditSuccess( @RequestParam("sid")int sid,Student std, Model model)
	{
		Student std_edit  =stdDao.StudentEditDao(sid,std);
		
		model.addAttribute("std", std_edit);
		
		model.addAttribute("msg"," Data modify successfully");
		
		return "Admin/SignupEdit";
	}
	
	@RequestMapping("/MyProfile")
	public String MyProfile(@RequestParam("sid")int sid , Model model)
	{
		Student std =stdDao.getStudentDao(sid);
		model.addAttribute("std", std);
		return "Students/MyProfile";
	}
	
	
	
	
	@PostMapping("/MyProfileEditSuccess")
	public String MyProfileEditSuccess( @RequestParam("sid")int sid,Student std, Model model)
	{
		Student std_edit  =stdDao.StudentEditDao(sid,std);
		
		model.addAttribute("std", std_edit);
		
		model.addAttribute("msg"," Data modify successfully");
		
		return "Students/MyProfile";
	}

		

	
	
}



