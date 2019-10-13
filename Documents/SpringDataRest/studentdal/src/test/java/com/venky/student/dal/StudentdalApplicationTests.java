package com.venky.student.dal;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.venky.student.dal.entities.Student;
import com.venky.student.dal.repos.StudentRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class StudentdalApplicationTests {

	@Autowired
	private StudentRepository studentRepository;

	@Test
	public void testCreateStudent() {
		
		Student student = new Student();
		student.setName("Venky");
		student.setCourse("Java Web Services");
		student.setFee(50d);
		
		studentRepository.save(student);
	}
	
	@Test
	public void testFindStudentById() {
		Student student = studentRepository.findById(1l).get();
		System.out.println(student);
	}
	
	@Test
	public void testUpdateStudent() {
		Student student = studentRepository.findById(1l).get();
		//student.setName("Nitya");
		student.setFee(50d);
		
		studentRepository.save(student);
	}
	
	@Test
	public void testDeleteStudent() {
		studentRepository.deleteById(3l);
	}
	

}
