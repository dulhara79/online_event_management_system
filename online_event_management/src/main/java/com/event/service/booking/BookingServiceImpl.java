package com.event.service.booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;
import org.xml.sax.SAXException;
import java.sql.SQLException;
import java.io.IOException;

import com.event.model.booking.Booking;
import com.event.util.CommonConstants;
import com.event.util.CommonUtil;
import com.event.util.DBConnection;
import com.event.util.QueryUtil;

public class BookingServiceImpl implements IBookingService
{
	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
		
	static
	{
		createBookingTable();
	}
		
	public static void createBookingTable()
	{
		try
		{
			connection = DBConnection.getDBConnection();
			
			stmt = connection.createStatement();
			
			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_BOOKING_TABLE));
		}
		catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e)
		{
			System.out.println("Create table exception" + e.getMessage());
		}
		
		finally
		{
			try
			{
				if(connection != null)
				{
					connection.close();
				}
				
				if(stmt != null)
				{
					stmt.close();
				}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		}
	}

	@Override
	public void addBooking(Booking booking) 
	{
		String bookingId = CommonUtil.generateBookingIds(getBookingIds());
		
		try
		{
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_BOOKING));
			connection.setAutoCommit(false);
			
			booking.setBookingId(bookingId);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, booking.getBookingId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, booking.getUserId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, booking.getEventId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, booking.getEventName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, booking.getEventDescription());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		}
		catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e)
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			try
			{
				if(connection != null)
				{
					connection.close();
				}
				
				if(preparedStatement != null)
				{
					preparedStatement.close();
				}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		}
	}

	@Override
	public ArrayList<Booking> getBookings() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Booking> getBookingById(String bookingId) {
	ArrayList<Booking> bookinglist = new ArrayList<Booking>();
		
	System.out.println("getBookingById with a parameter: " + bookingId);
	
		try {

			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_BOOKING_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, bookingId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				Booking booking = new Booking();
				
				booking.setBookingId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				booking.setUserId(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				booking.setEventId(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				booking.setEventName(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				booking.setEventDescription(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				bookinglist.add(booking);
			}
			
			
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		} finally {

			try {

				if (connection != null) {
					connection.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}

			} catch (SQLException e) {

				System.out.println(e.getMessage());
				e.printStackTrace();

			}
		}
		
		return bookinglist;
	
	}
	
	@Override
	public ArrayList<Booking> getBookingByUserId(String userId) {
		
		ArrayList<Booking> bookinglist = new ArrayList<Booking>();
		
		try {

			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_BOOKING_BY_USER_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, userId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				Booking booking = new Booking();
				
				booking.setBookingId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				booking.setUserId(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				booking.setEventId(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				booking.setEventName(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				booking.setEventDescription(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				
				bookinglist.add(booking);
			}
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		} finally {

			try {

				if (connection != null) {
					connection.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}

			} catch (SQLException e) {

				System.out.println(e.getMessage());
				e.printStackTrace();

			}
		}
		
		return bookinglist;
	}

	@Override
	public void updateBooking(String bookingId, Booking Booking) {
		try
		{
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_UPDATE_BOOKING_BY_BOOKING_ID));
			connection.setAutoCommit(false);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, Booking.getEventId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, Booking.getEventName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, Booking.getEventDescription());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, Booking.getBookingId());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		}
		catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e)
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			try
			{
				if(connection != null)
				{
					connection.close();
				}
				
				if(preparedStatement != null)
				{
					preparedStatement.close();
				}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		}
		
	}

	@Override
	public void deleteBooking(String bookingId) {

		System.out.println("Booking id in delete service impl: " + bookingId);
		
		if(bookingId != null && !bookingId.isEmpty()) {
			
			try {
				
				connection = DBConnection.getDBConnection();
				
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_DELETE_BOOKING_BY_BOOKING_ID));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, bookingId);
				
				preparedStatement.execute();
				
			} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {

				System.out.println(e.getMessage());
				e.printStackTrace();

			} finally {

				try {

					if (connection != null) {
						connection.close();
					}
					if (preparedStatement != null) {
						preparedStatement.close();
					}

				} catch (SQLException e) {

					System.out.println(e.getMessage());
					e.printStackTrace();

				}
			}
			
		}		
	}
	
	public ArrayList<String> getBookingIds()
	{
		ArrayList<String> ids = new ArrayList<String>();
		
		try 
		{
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_BOOKING_IDS));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next())
			{
				ids.add(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
			}
		}
		catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e)
		{
			System.out.println(e.getMessage());
		}
		finally
		{
			try
			{
				if(connection != null)
				{
					connection.close();
				}
				
				if(preparedStatement != null)
				{
					preparedStatement.close();
				}
			}
			catch(SQLException e)
			{
				System.out.println(e.getMessage());
			}
		}
		
		return ids;
	}


}
