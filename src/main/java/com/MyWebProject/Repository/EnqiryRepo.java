package com.MyWebProject.Repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.MyWebProject.Entity.Enquiry;

public interface EnqiryRepo extends JpaRepository<Enquiry ,Integer>
{
  // native query + jpql
	
	@Query(value = "select * from Enquiry where sid =:sid",nativeQuery = true )
	List<Enquiry>  MyAllEnquiryRepo(@Param("sid")int sid);
	
	
	//join
	
	@Query(value= "select e.* from  Student  s inner join Enquiry e on s.sid = e.sid" ,nativeQuery = true)
	List<Enquiry> ViewAllEnquiryRepo();
}
