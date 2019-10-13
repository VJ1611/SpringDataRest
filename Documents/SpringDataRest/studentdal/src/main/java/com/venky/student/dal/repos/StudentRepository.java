package com.venky.student.dal.repos;

import org.springframework.data.repository.CrudRepository;

import com.venky.student.dal.entities.Student;

public interface StudentRepository extends CrudRepository<Student, Long> {

}
