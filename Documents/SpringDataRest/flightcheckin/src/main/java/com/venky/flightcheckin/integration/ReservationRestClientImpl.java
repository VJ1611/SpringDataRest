package com.venky.flightcheckin.integration;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.venky.flightcheckin.integration.dto.Reservation;
import com.venky.flightcheckin.integration.dto.ReservationUpdateRequest;


@Component
public class ReservationRestClientImpl implements ReservationRestClient {
	
	@Value("${com.venky.flightcheckin.reservation.url}")
	private String RESERVATION_URL;

	@Override
	public Reservation findreservation(Long id) {
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate.getForObject(RESERVATION_URL+id, Reservation.class);
		return reservation;
	}

	@Override
	public Reservation updatereservation(ReservationUpdateRequest request) {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.postForObject(RESERVATION_URL, request, Reservation.class);
		return null;
	}

}
