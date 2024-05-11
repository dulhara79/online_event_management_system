package com.event.service.coordinator;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.event.model.User;
import com.event.model.coordinator.Coordinator;
import com.event.service.user.IUserService;


public interface ICoordinatorService {
	
	public static final Logger log = Logger.getLogger(ICoordinatorService.class.getName());
	
	public Coordinator getCoordinatorByID(String coordinatorId);
	
	

	
}

