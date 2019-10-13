package com.venky.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.venky.flightreservation.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

}
