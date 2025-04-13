package com.example.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.example.demo.Dao.ClientRequestRepository;
import com.example.demo.Entities.ClientRequests;

@Component
public class ClientRequestsBl {
	
	@Autowired
	public ClientRequestRepository crepo;
	
	public ClientRequests addRequest(ClientRequests cr)
	{
		if(cr!=null)
		{
		 return crepo.save(cr);
		}
		return null;
		
	}
	
	

}
