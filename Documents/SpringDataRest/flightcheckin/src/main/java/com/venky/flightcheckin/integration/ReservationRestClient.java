package com.venky.flightcheckin.integration;

import com.venky.flightcheckin.integration.dto.Reservation;
import com.venky.flightcheckin.integration.dto.ReservationUpdateRequest;

public interface ReservationRestClient {

	public Reservation findreservation(Long id);
	public Reservation updatereservation(ReservationUpdateRequest request);
}
