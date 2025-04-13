package com.example.demo.Entities;
import jakarta.persistence.*;
import java.time.LocalDateTime;

import org.apache.tomcat.util.net.openssl.OpenSSLStatus.Name;

@Entity
public class ClientRequests{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    private Client client;
    @ManyToOne
    private Lawyer lawyer;
    
    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime bookingTime;
    
    
    private boolean status = true;

    @PrePersist
    public void onprepersist()
    {
    	bookingTime=LocalDateTime.now();
    }
    
    public ClientRequests(Client client, Lawyer lawyer) {
		super();
		this.client = client;
		this.lawyer = lawyer;
	}

	@Override
	public String toString() {
		return "Booking [id=" + id + ", client=" + client + ", lawyer=" + lawyer + ", bookingTime=" + bookingTime + "]";
	}

	public ClientRequests(Client client, Lawyer lawyer, LocalDateTime bookingTime) {
		super();
		this.client = client;
		this.lawyer = lawyer;
		this.bookingTime = bookingTime;
	}

	public ClientRequests() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public Lawyer getLawyer() {
		return lawyer;
	}

	public void setLawyer(Lawyer lawyer) {
		this.lawyer = lawyer;
	}

	public LocalDateTime getBookingTime() {
		return bookingTime;
	}

	public void setBookingTime(LocalDateTime bookingTime) {
		this.bookingTime = bookingTime;
	}

    
    
}
