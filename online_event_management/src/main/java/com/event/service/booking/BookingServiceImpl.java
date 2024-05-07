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

import com.event.model.booking.booking;
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
	public void addBooking(booking Booking) 
	{
		String booking_id = CommonUtil.generateBookingIds(getBookingIds());
		
		try
		{
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_BOOKING));
			connection.setAutoCommit(false);
			
			Booking.setBooking_id(booking_id);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, Booking.getBooking_id());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, Booking.getUser_name());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, Booking.getEvent_name());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, Booking.getPayment_id());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, Booking.getService_name());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, Booking.getEvent_description());

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
	public ArrayList<booking> getBookings() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<booking> getBookingById() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateBooking(String booking_id, booking Booking) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteBooking(String booking_id) {
		// TODO Auto-generated method stub
		
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
