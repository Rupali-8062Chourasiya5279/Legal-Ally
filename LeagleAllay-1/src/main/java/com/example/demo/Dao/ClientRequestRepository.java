package com.example.demo.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Entities.ClientRequests;

public interface ClientRequestRepository extends JpaRepository<ClientRequests, Long> {

}
