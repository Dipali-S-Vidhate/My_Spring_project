package com.MyWebProject.DAO;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.MyWebProject.Entity.Enquiry;
import com.MyWebProject.Repository.EnqiryRepo;
import com.MyWebProject.Repository.StudentRepo;

@Repository
public class EnquiryDao
{
	 @Autowired
	 EnqiryRepo  enqRepo;
		
	public void saveEnqiuryDataDao(Enquiry enq) 
	  {
		  enqRepo.save(enq);
	  }
	
	public List<Enquiry> MyAllEnquiryDao(int sid)
	{
		//List<Enquiry> enq_list=(List<Enquiry>)enqRepo.findAll();
		List<Enquiry>  enq_list = enqRepo.MyAllEnquiryRepo(sid);
		return enq_list;
	}
	
	public List<Enquiry> viewAllEnquiryDao()
	{
		//List<Enquiry> enq_list= enqRepo.findAll();
		List<Enquiry> enq_list = enqRepo.ViewAllEnquiryRepo();
		return enq_list;
	}
	
	public Enquiry getEnquiry(int eid)
	{
		 Enquiry enq =enqRepo.findById(eid).get();
		 return enq;
	}

	public Enquiry setRemarkSuccessDao(int eid,Enquiry enq)
	{
		Enquiry result =enqRepo.findById(eid).get();
		
		result.setRemark(enq.getRemark());
		
		return enqRepo.save(result);
	}
	
	public String deleteEnquiryDao(int eid) 
	{
		Enquiry enq =enqRepo.findById(eid).get();
		
		if(enq.getRemark().equals("Not Set"))
		{
			enqRepo.delete(enq);	
			return "Enquiry Deleted";
		}
		else
		{
			return "Enquiry Not Delete";
		}
		
	}
	
	
	
}
