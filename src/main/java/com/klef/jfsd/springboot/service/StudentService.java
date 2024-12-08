package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService
{ 
	public String addStudent(Student student);
  public String updatestudent(Student s);
  public Student viewstudentbyid(int sid);  
  public Student checkstudentlogin(String email,String pwd);
  public String updatePasswordByEmail(String email, String newPassword);
  public Student findByEmail(String email);
  public String studentRegistraion(Student s);
  public Void saveStudent(Student s);
public Student getStudentByEmail(String email);
public void updateStudent(Student student);
public Student getStudentWithReports(int sid);
public List<Student> getAllStudents();
public Student getStudentById(Long studentId);
Student getStudentById(int id);
public Student findStudentById(int id);
  
}