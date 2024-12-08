 package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;

	public String addStudent(Student student) {
        // Validate the student object here if needed (e.g., check if contact, email are valid)
        try {
            // Save the student to the database
            studentRepository.save(student);
            return "Student added successfully!";
        } catch (Exception e) {
            e.printStackTrace();
            return "Error adding student: " + e.getMessage();
        }
    }

	@Override
	public String updatestudent(Student s) {
		Student e = studentRepository.findById(s.getId()).get();

		e.setName(s.getName());
		e.setGender(s.getGender());
		e.setEmail(s.getEmail());
		e.setDateOfBirth(s.getDateOfBirth());
		e.setPassword(s.getPassword());
		e.setContact(s.getContact());
		e.setStatus(s.getStatus());
		
	

		// Check if a new profile image is provided

		studentRepository.save(e);

		return "Student Updated Successfully";
	}

	@Override
	public Student checkstudentlogin(String email, String pwd) {
		return studentRepository.checkstudentlogin(email, pwd);
	}

//	@Override
//	public Student viewstudentbyid(int sid) {
//		Optional<Student> obj = studentRepository.findById(sid);
//
//		if (obj.isPresent()) {
//			Student s = obj.get();
//
//			return s;
//		} else {
//			return null;
//		}
//	}
//	
	@Override
	  public Student findByEmail(String email) {
	    return studentRepository.findByEmail(email);
	  }

	    @Override
	      public String updatePasswordByEmail(String email, String newPassword) {
	          Student student = studentRepository.findByEmail(email);
	          if (student != null) {
	              student.setPassword(newPassword);
	              studentRepository.save(student);
	              return "Student Updated Successfully";
	          } else {
	              return "Student with provided email not found";
	          }
	      }

		@Override
		public String studentRegistraion(Student s) {
			studentRepository.save(s);
			return "Student Registered Succesfully" ;
		}
		
		 public Void saveStudent(Student s) {
		        studentRepository.save(s);
				return null;
		    }

		@Override
		public Student getStudentByEmail(String email) {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public void updateStudent(Student student) {
			// TODO Auto-generated method stub
			
		}

		@Override
		public Student getStudentWithReports(int sid) {
			// TODO Auto-generated method stub
			return null;
		}

		 @Override
		    public List<Student> getAllStudents() {
		        return studentRepository.findAll();
		    }

		    @Override
		    public Student getStudentById(int id) {
		        return studentRepository.findById(id).orElseThrow(() -> new RuntimeException("Student not found"));
		    }
		    @Override
		    public Student getStudentById(Long studentId) {
		        return studentRepository.findById(studentId).orElse(null);
		    }

		    @Override
		    public Student findStudentById(int id) {
		        return studentRepository.findById(id).orElse(null);
		    
			}

			@Override
			public Student viewstudentbyid(int sid) {
				// TODO Auto-generated method stub
				return null;
			}


}