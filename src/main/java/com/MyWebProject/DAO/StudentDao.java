package com.MyWebProject.DAO;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.MyWebProject.Entity.Student;
import com.MyWebProject.Repository.StudentRepo;



@Repository
public class StudentDao 
{
   @Autowired
	public StudentRepo repo;
	
   
   public void saveDataDao(Student std,MultipartFile imageFile)throws IOException
   {
	   String uploadDir=
			   System.getProperty("user.dir")+"/uploads/image/";
			   
			   
			Path  path =Paths.get(uploadDir);//check your current project path to create folder
			createDirectoriesIfNotExists(path);
			
			if((imageFile != null && !imageFile.isEmpty()))
			{
				std.setImage(saveFile(imageFile,path));
			}
			
	   repo.save(std);
   }
   
   
   private String saveFile(MultipartFile imageFile, Path path) throws IOException{
	
	   
	   String fileName=imageFile.getOriginalFilename();
	   String sanitizedFileName =fileName.replaceAll("\\s+","_");
	   
	   Path filePath = path.resolve(sanitizedFileName);
	   Files.write(filePath,imageFile.getBytes());
	   
	   return"/uploads/image/" +sanitizedFileName;
   }
	   

public void createDirectoriesIfNotExists(Path path) throws IOException {
	   {
		   if(!Files.exists(path)){
			   Files.createDirectories(path);
		   }
	   }
   }
   
   
   public Student checkSignInDao(String email,String password)
   {
	  return repo.findByEmailAndPassword(email,password);
   }
   
   public  List<Student> getAllStudentsDao() 
   {
	 List<Student> stud_list= (List<Student>)repo.findAll();
	 return stud_list;
   }
   
   public Student getStudentDao(int sid) 
   {
	  Student std= repo.findById(sid).get();
	  return std;
	  
   }
   
   public Student StudentEditDao(int sid ,Student std)
   {
	Optional<Student> result= repo.findById(sid);   
	
	if(result.isPresent())
	{
		return repo.save(std);
	}
	return null;
   }
   
   
}
