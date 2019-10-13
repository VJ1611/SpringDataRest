package com.venky.clinicals.model.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.venky.clinicals.model.Patient;

public interface PatientRepository extends JpaRepository<Patient, Integer> {

}
