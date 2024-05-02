package com.event.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

public class CommonUtil {

	public static final Properties properties = new Properties();

	static {

		try {

			properties.load(QueryUtil.class.getResourceAsStream(CommonConstants.PROPERTY_FILE));

		} catch (IOException e) {
			System.out.println("Common util class: ");
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	
	//Generate user ID with prefix
	public static String generateUserIDs(ArrayList<String> arraylist) {

		String id;
		int next = arraylist.size();

		id = CommonConstants.USER_ID_PREFIX + next;

		if (arraylist.contains(id)) {
			next++;
			
			id = CommonConstants.USER_ID_PREFIX + next;
		}

		return id;

	}
	
	//Generate coordinator ID with prefix
	public static String generateCoordinatorIDs(ArrayList<String> arraylist) {
		
		String id;
		int next = arraylist.size();
		
		id = CommonConstants.COORDINATOR_ID_PREFIX + next;
		
		if(arraylist.contains(id)) {
			next++;
			
			id = CommonConstants.COORDINATOR_ID_PREFIX + next;
		}
		
		return id;
	}
	
	//Generate admin ID with prefix
	public static String generateAdminIDs(ArrayList<String> arraylist) {
		
		String id;
		int next = arraylist.size();
		
		id = CommonConstants.ADMIN_ID_PREFIX + next;
		
		if(arraylist.contains(id)) {
			next++;
			
			id = CommonConstants.ADMIN_ID_PREFIX + next;
		}
		
		return id;
	}
}
