package com.venky.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.venky.flightreservation.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
