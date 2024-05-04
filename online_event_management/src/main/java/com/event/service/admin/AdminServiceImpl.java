package com.event.service.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.event.util.CommonConstants;
import com.event.util.DBConnection;
import com.event.util.QueryUtil;
import com.event.model.admin.Admin;

public class AdminServiceImpl implements IAdminService{
	
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
	public Admin getAdminByID(String adminId) {
		Admin admin = new Admin();
		
		try {

			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ADMIN_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, adminId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				
				admin.setAdminId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				admin.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				admin.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
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
		
		return admin;
    }

}
