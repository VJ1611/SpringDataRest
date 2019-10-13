package com.venky.flightreservation.services;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.venky.flightreservation.dto.ReservationRequest;
import com.venky.flightreservation.entities.Flight;
import com.venky.flightreservation.entities.Passenger;
import com.venky.flightreservation.entities.Reservation;
import com.venky.flightreservation.repos.FlightRepository;
import com.venky.flightreservation.repos.PassengerRepository;
import com.venky.flightreservation.repos.ReservationRepository;
import com.venky.flightreservation.util.EmailUtil;
import com.venky.flightreservation.util.PDFGenerator;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Value("${com.venky.flightreservation.itinerary.dirpath}")
	private String ITINERARY_DIR;

	@Autowired
	FlightRepository flightRepository;

	@Autowired
	PassengerRepository passengerRepository;

	@Autowired
	ReservationRepository reservationRepository;

	@Autowired
	PDFGenerator pdfGenerator;

	@Autowired
	EmailUtil emailUtil;
	
	private static final Logger LOGGER = LoggerFactory.getLogger(ReservationServiceImpl.class);

	@Override
	@Transactional
	public Reservation bookFlight(ReservationRequest request) {
		
		LOGGER.info("Inside bookFlight()");

		// Make Payment

		Long flightId = request.getFlightId();
		
		LOGGER.info("Fetching flight for flightId: "+flightId);
		
		Flight flight = flightRepository.findById(flightId).get();

		Passenger passenger = new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setMiddleName(request.getPassengerMiddleName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setPhone(request.getPassengerPhone());
		passenger.setEmail(request.getPassengerEmail());
		
		LOGGER.info("Saving the Passenger: "+passenger);

		Passenger savedPassenger = passengerRepository.save(passenger);

		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);

		LOGGER.info("Saving the Reservation: "+reservation);
		
		Reservation savedReservation = reservationRepository.save(reservation);

		String filePath = ITINERARY_DIR + savedReservation.getId() + ".pdf";
		
		LOGGER.info("Generating the Itinerary");
		
		pdfGenerator.generateItinerary(savedReservation, filePath);
		
		LOGGER.info("Emailing the Itinerary");
		
		emailUtil.sendItinerary(passenger.getEmail(), filePath);

		return savedReservation;
	}

}
