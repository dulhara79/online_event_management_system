package com.event.service.admin;

import java.util.ArrayList;
import java.util.logging.Logger;

import com.event.model.admin.Admin;

public interface IAdminService {
	
	public static final Logger log = Logger.getLogger(IAdminService.class.getName());
	
	public void addAdmin(Admin admin);
	
	public ArrayList<Admin> getAdminById(String adminId);
	
	public ArrayList<Admin> getAdmins();
	
	public void updateAdmin(String adminId, Admin admin);
	
	public void deleteAdmin(String adminId);
	
	public Admin getAdminByID(String adminId);
}
