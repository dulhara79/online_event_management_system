package com.event.service.coordinator;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.event.model.User;
import com.event.model.coordinator.Coordinator;
import com.event.util.CommonConstants;
import com.event.util.DBConnection;
import com.event.util.QueryUtil;

public class CoordinatorServiceImpl implements ICoordinatorService{

	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
	
	static {
		
		crateUserTable();
	}
	
	public static void crateUserTable() {
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			stmt = connection.createStatement();
			
			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_USER_TABLE));
			
		} catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
			e.printStackTrace();
			
		} finally {
			
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(stmt != null) {
					stmt.close();
				}
				
			} catch (SQLException e) {
				
				System.out.println(e.getMessage());
				e.printStackTrace();
				
			}
		}
	}

	@Override
	public Coordinator getCoordinatorByID(String coordinatorId) {
		Coordinator coordinator = new Coordinator();
		
		try {

			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_COORDINATOR_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, coordinatorId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				
				coordinator.setCoordinatorId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				coordinator.setCoordinatorName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				coordinator.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
			}
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();

		} finally {

			try {

				if (connection != null) {
					connection.close();
				}
				if (stmt != null) {
					stmt.close();
				}

			} catch (SQLException e) {

				System.out.println(e.getMessage());
				e.printStackTrace();

			}
		}
		
		return coordinator;
    }
	

	


	
		
}
