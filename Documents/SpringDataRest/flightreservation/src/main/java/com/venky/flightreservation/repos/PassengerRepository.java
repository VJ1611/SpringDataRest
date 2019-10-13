package com.venky.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.venky.flightreservation.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
