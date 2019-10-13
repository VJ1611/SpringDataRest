package com.venky.flightreservation.services;

import com.venky.flightreservation.dto.ReservationRequest;
import com.venky.flightreservation.entities.Reservation;

public interface ReservationService {

	public Reservation bookFlight(ReservationRequest request);
}
