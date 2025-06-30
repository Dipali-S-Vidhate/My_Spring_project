package com.MyWebProject.Repository;

import org.springframework.data.repository.CrudRepository;

import com.MyWebProject.Entity.Student;

//JPARepository : CrudRepositery + Paging + Sorting 
public interface StudentRepo extends CrudRepository<Student,Integer>
{
  public Student findByEmailAndPassword(String email,String password);
}
