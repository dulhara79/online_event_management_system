package com.event.service.admin;

import java.util.logging.Logger;

import com.event.model.admin.Admin;

public interface IAdminService {
	
	public static final Logger log = Logger.getLogger(IAdminService.class.getName());
	
	public Admin getAdminByID(String adminId);
}
