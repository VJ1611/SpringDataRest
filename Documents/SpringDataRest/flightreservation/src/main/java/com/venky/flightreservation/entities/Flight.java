package com.venky.flightreservation.entities;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Flight extends AbstractEntity{

	private String flightNumber;
	private String operatingAirlines;
	private String departureCity;
	private String arrivalCity;
	@Column(name = "DATE_OF_DEPARTURE")
	@Temporal(value = TemporalType.DATE)
	private Date dataOfDeparture;
	private Timestamp estimatedDepartureTime;

	public String getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

	public String getOperatingAirlines() {
		return operatingAirlines;
	}

	public void setOperatingAirlines(String operatingAirlines) {
		this.operatingAirlines = operatingAirlines;
	}

	public String getDepartureCity() {
		return departureCity;
	}

	public void setDepartureCity(String departureCity) {
		this.departureCity = departureCity;
	}

	public String getArrivalCity() {
		return arrivalCity;
	}

	public void setArrivalCity(String arrivalCity) {
		this.arrivalCity = arrivalCity;
	}

	public Date getDataOfDeparture() {
		return dataOfDeparture;
	}

	public void setDataOfDeparture(Date dataOfDeparture) {
		this.dataOfDeparture = dataOfDeparture;
	}

	public Timestamp getEstimatedDepartureTime() {
		return estimatedDepartureTime;
	}

	public void setEstimatedDepartureTime(Timestamp estimatedDepartureTime) {
		this.estimatedDepartureTime = estimatedDepartureTime;
	}
	
	@Override
	public String toString() {
		return "Flight [flightNumber=" + flightNumber + ", operatingAirlines=" + operatingAirlines + ", departureCity="
				+ departureCity + ", arrivalCity=" + arrivalCity + ", dataOfDeparture=" + dataOfDeparture
				+ ", estimatedDepartureTime=" + estimatedDepartureTime + "]";
	}

}
