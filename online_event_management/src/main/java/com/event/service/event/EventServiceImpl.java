package com.event.service.event;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.event.model.event.Event;
import com.event.util.CommonConstants;
import com.event.util.CommonUtil;
import com.event.util.DBConnection;
import com.event.util.QueryUtil;

/**
 * Event service implementation
 */
public class EventServiceImpl implements IEventEventService{
	
	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
	
	static {
		
		createEventTable();
	}
	
	public static void createEventTable() {
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			stmt = connection.createStatement();
			
			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_EVENT_TABLE));
					
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println("Create table exception " + e.getMessage());
		}finally {
			
			try {
				
				if(connection != null) {
					
					connection.close();
				}
				
				if(stmt != null) {
					
					stmt.close();
				}
				
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
		
	}

	@Override
	public void addEvent(Event event) {
		
		String eventId = CommonUtil.generateEventIds(getEventIds());
		
		try {
			
			connection = DBConnection.getDBConnection();
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_EVENT));
			connection.setAutoCommit(false);
			
			event.setEventId(eventId);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, event.getEventId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, event.getEventName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, event.getEventDate());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, event.getVenue());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, event.getEventDescription());
			preparedStatement.setDouble(CommonConstants.COLUMN_INDEX_SIX, event.getBudget());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
			
		}finally {
			
			try {
				
				if(connection != null) {
					
					connection.close();
				}
				
				if(preparedStatement != null) {
					
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
		
	}

	@Override
	public ArrayList<Event> getEvents() {
		
		ArrayList<Event> eventList = new ArrayList<Event>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ALL_EVENTS));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				Event ev = new Event();
				
				ev.setEventId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				ev.setEventName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				ev.setEventDate(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				ev.setVenue(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));;
				ev.setEventDescription(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				ev.setBudget(rs.getDouble(CommonConstants.COLUMN_INDEX_SIX));
				
				eventList.add(ev);
				
			}
			
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally {
			
			try {
				
				if(connection != null) {
					
					connection.close();
				}
				
				if(preparedStatement != null) {
					
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
		
		return eventList;
	}

	@Override
	public ArrayList<Event> getEventById(String eventId) {
		
		ArrayList<Event> eventList = new ArrayList<Event>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_EVENT_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, eventId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				Event ev = new Event();
				
				ev.setEventId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				ev.setEventName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				ev.setEventDate(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				ev.setVenue(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));;
				ev.setEventDescription(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				ev.setBudget(rs.getDouble(CommonConstants.COLUMN_INDEX_SIX));
				
				eventList.add(ev);
				
			}
			
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally {
			
			try {
				
				if(connection != null) {
					
					connection.close();
				}
				
				if(preparedStatement != null) {
					
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
		
		return eventList;
	}

	@Override
	public void updateEvent(String eventId, Event event) {
		
		System.out.println("from outside try at update event method " + eventId);
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			System.out.println("from inside try at update event method " + eventId);
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_UPDATE_EVENT));
			connection.setAutoCommit(false);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, event.getEventName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, event.getEventDate());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, event.getVenue());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, event.getEventDescription());
			preparedStatement.setDouble(CommonConstants.COLUMN_INDEX_FIVE, event.getBudget());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, event.getEventId());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
			
		}finally {
			
			try {
				
				if(connection != null) {
					
					connection.close();
				}
				
				if(preparedStatement != null) {
					
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
		
	}

	@Override
	public void deleteEvent(String eventId) {
		
		if(eventId != null && !eventId.isEmpty()) {
			
			try {
				
				connection = DBConnection.getDBConnection();
				
				preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_DELETE_EVENT));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, eventId);
				
				preparedStatement.execute();
				
				
			}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
				
				System.out.println(e.getMessage());
				
			}finally {
				
				try {
					
					if(connection != null) {
						
						connection.close();
					}
					
					if(preparedStatement != null) {
						
						preparedStatement.close();
					}
					
				}catch(SQLException e) {
					
					System.out.println(e.getMessage());
				}
			}
			
		}
		
	}
	
	public ArrayList<String> getEventIds() {
		
		ArrayList<String> ids = new ArrayList<String>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_EVENT_IDS));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				ids.add(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
			
		}catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
		}finally {
			
			try {
				
				if(connection != null) {
					
					connection.close();
				}
				
				if(preparedStatement != null) {
					
					preparedStatement.close();
				}
				
			}catch(SQLException e) {
				
				System.out.println(e.getMessage());
			}
		}
		
		return ids;
	}

}
