package com.event.util;


/**
 * 
 */
public class CommonConstants {

	/** Constant for config.properties key for query file path */
	public static final String QUERY_XML = "queryFilePath";

	/** Constant for file path of config.properties */
	public static final String PROPERTY_FILE = "config.properties";

	/** Constant for query tag in queries.xml */
	public static final String TAG_NAME = "query";

	/** Constant for query id in queries.xml */
	public static final String ATTRIBUTE_NAME = "id";

	/** Constant for comma */
	public static final String COMMA = ",";

	/** Constant for url key of MySQL database in config.properties */
	public static final String URL = "url";

	/** Constant for user name key of MySQL database in config.properties */
	public static final String USERNAME = "username";

	/** Constant for password key of MySQL database in config.properties */
	public static final String PASSWORD = "password";

	/** Constant for driver name key of MySQL database in config.properties */
	public static final String DRIVER_NAME = "driverName";

	/** Constant for Column index one */
	public static final int COLUMN_INDEX_ONE = 1;

	/** Constant for Column index two */
	public static final int COLUMN_INDEX_TWO = 2;

	/** Constant for Column index three */
	public static final int COLUMN_INDEX_THREE = 3;

	/** Constant for Column index four */
	public static final int COLUMN_INDEX_FOUR = 4;

	/** Constant for Column index five */
	public static final int COLUMN_INDEX_FIVE = 5;

	/** Constant for Column index six */
	public static final int COLUMN_INDEX_SIX = 6;

	/** Constant for Column index seven */
	public static final int COLUMN_INDEX_SEVEN = 7;

	/** Constant for Column index eight */
	public static final int COLUMN_INDEX_EIGHT = 8;

	/** Constant for Column index nine */
	public static final int COLUMN_INDEX_NINE = 9;

	/*
	 * User constants
	 */

	/** Constant for user id prefix */
	public static final String USER_ID_PREFIX = "U0000";
	
	public static final String QUERY_ID_CREATE_USER_TABLE = "create_user_table";
	
	public static final String QUERY_ID_GET_USER_IDS = "get_user_ids";
	
	public static final String QUERY_ID_INSERT_USER = "insert_user";
	
	public static final String QUERY_ID_GET_ALL_USER = "get_all_user";
	
	public static final String QUERY_ID_GET_USER_BY_ID = "get_user_by_id";
	
	public static final String QUERY_ID_UPDATE_USER_BY_ID = "update_user_by_id";
	
	public static final String QUERY_ID_DELETE_USER_BY_ID = "delete_user_by_id";
	
	
	
	

	/*
	 * Event constants
	 */

	public static final String EVENT_ID_PREFIX = "E0000";
	
	public static final String QUERY_ID_CREATE_EVENT_TABLE = "create_event_table";
	
	public static final String QUERY_ID_INSERT_EVENT = "insert_event";
	
	public static final String QUERY_ID_GET_EVENT_IDS = "get_event_ids"; 
	
	public static final String QUERY_ID_GET_ALL_EVENTS = "get_event_all_events";
	
	public static final String QUERY_ID_GET_EVENT_BY_ID = "get_event_by_id";
	
	public static final String QUERY_ID_UPDATE_EVENT = "update_event";
	
	public static final String QUERY_ID_DELETE_EVENT = "delete_event";

	/*
	 * Company constants
	 */

	/** Constant for company id prefix */
	public static final String COMPANY_ID_PREFIX = "CP0000";
	
	public static final String QUERY_ID_CREATE_COMPANY_TABLE = "create_company_table";
	
	public static final String QUERY_ID_INSERT_COMPANY = "insert_company";
	
	public static final String QUERY_ID_GET_COMPANY_IDS = "get_company_ids";
	
	public static final String QUERY_ID_GET_ALL_COMPANIES = "get_company_all_company";
	
	public static final String QUERY_ID_GET_COMPANY_BY_ID = "get_company_by_id";
	
	public static final String QUERY_ID_UPDATE_COMPANY = "update_company";

	public static final String QUERY_ID_DELETE_COMPANY = "delete_company" ;

	public static final String QUERY_ID_GET_ALL_COMPANY ="get_all_company";


	
	
	
	/*
	 * Admin constants
	 */

	/** Constant for admin id prefix */
	public static final String ADMIN_ID_PREFIX = "AD0000";

	/** create admin table in queries.xml */
	public static final String QUERY_ID_CREATE_ADMIN_TABLE = "create_admin_table";
	
	public static final String QUERY_ID_INSERT_ADMIN = "insert_admin";
	
	public static final String QUERY_ID_GET_ALL_ADMINS = "get_all_admin";
	
	public static final String QUERY_ID_GET_ADMIN_BY_ID = "get_admin_by_id";
	
	public static final String QUERY_ID_GET_ADMIN_IDS = "get_admin_ids";
	
	public static final String QUERY_ID_UPDATE_ADMIN_BY_ID = "update_admin_by_id";
	
	public static final String QUERY_ID_DELETE_ADMIN_BY_ID = "delete_admin_by_id";
	
	
	
	
	
	/*
	 * Coordinator constants
	 */

	/** Constant for Coordinator id prefix */
	public static final String COORDINATOR_ID_PREFIX = "CD0000";

	/** create Coordinator table in queries.xml */
	public static final String QUERY_ID_CREATE_COORDINATOR_TABLE = "create_coordinator_table";
	
	public static final String QUERY_ID_INSERT_COORDINATOR = "insert_coordinator";
	
	public static final String QUERY_ID_GET_COORDINATOR_IDS = "get_coordinator_ids";
	
	public static final String QUERY_ID_GET_COORDINATOR_BY_ID = "get_coordinator_by_id";
	
	public static final String QUERY_ID_GET_ALL_COORDINATORS = "get_coordinator_all_events";
	
	
	
	/*
	 * Booking constants
	 */
	
	public static final String BOOKING_ID_PREFIX = "BK0000";
	
	public static final String QUERY_ID_CREATE_BOOKING_TABLE = "create_booking_table";
	
	public static final String QUERY_ID_INSERT_BOOKING = "insert_booking";
	
	public static final String QUERY_ID_GET_BOOKING_IDS = "get_booking_ids";

	
	

	

	
	
	public static final String QUERY_ID_GET_BOOKING_BY_USER_ID = "get_booking_by_user_id";
	
	public static final String QUERY_ID_GET_BOOKING_BY_ID = "get_booking_by_id";
	
	public static final String QUERY_ID_UPDATE_BOOKING_BY_BOOKING_ID = "update_booking_by_booking_id";
	
	public static final String QUERY_ID_DELETE_BOOKING_BY_BOOKING_ID = "delete_booking_by_booking_id";
	
	
	
}
