package com.event.service.user;

import com.event.util.CommonConstants;
import com.event.util.CommonUtil;
import com.event.util.DBConnection;
import com.event.util.QueryUtil;

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

public class UserServiceImpl implements IUserService{
	
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
	public void addUser(User user) {
		
		String userId = CommonUtil.generateUserIDs(getUserIds());
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_USER));
			connection.setAutoCommit(false);
			
			user.setUserId(userId);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, user.getUserId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, user.getUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, user.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, user.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, user.getGender());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, user.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, user.getPhoneNo());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_EIGHT, user.getEmail());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_NINE, user.getPassword());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		} catch(SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println(e.getMessage());
			e.printStackTrace();
			
		} finally {
			
			try {
				
				if(connection != null) {
					connection.close();
				}
				if(preparedStatement != null) {
					preparedStatement.close();
				}
				
			} catch (SQLException e) {
				
				System.out.println(e.getMessage());
				e.printStackTrace();
				
			}
		}		
		
	}

	@Override
	public ArrayList<User> getUserById(String userId) {
		
		ArrayList<User> userlist = new ArrayList<User>();
		
		try {

			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_USER_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, userId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				User user = new User();
				
				user.setUserId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				user.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				user.setFirstName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				user.setLastName(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				user.setGender(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				user.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
				user.setPhoneNo(rs.getString(CommonConstants.COLUMN_INDEX_SEVEN));
				user.setEmail(rs.getString(CommonConstants.COLUMN_INDEX_EIGHT));
				user.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_NINE));
				
				userlist.add(user);
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
				
		return userlist;
	}
	
	
	
	public User getUserByID(String userId) {
		
		User user = new User();
		
		try {

			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_USER_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, userId);
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				
				user.setUserId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				user.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				user.setFirstName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				user.setLastName(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				user.setGender(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				user.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
				user.setPhoneNo(rs.getString(CommonConstants.COLUMN_INDEX_SEVEN));
				user.setEmail(rs.getString(CommonConstants.COLUMN_INDEX_EIGHT));
				user.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_NINE));
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
		
		return user;
    }
	 


	@Override
	public void updateUser(String userId, User user) {

		try {

			connection = DBConnection.getDBConnection();

			preparedStatement = connection
					.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_UPDATE_USER_BY_ID));
			connection.setAutoCommit(false);

			user.setUserId(userId);

			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, user.getUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, user.getFirstName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, user.getLastName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, user.getGender());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, user.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, user.getPhoneNo());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, user.getEmail());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_EIGHT, user.getPassword());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_NINE, user.getUserId());

			preparedStatement.executeLargeUpdate();
			connection.commit();

		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {

			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public ArrayList<User> getUsers() {
		
		ArrayList<User> userList = new ArrayList<User>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ALL_USER));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				User user = new User();
				
				user.setUserId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				user.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				user.setFirstName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				user.setLastName(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				user.setGender(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				user.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
				user.setPhoneNo(rs.getString(CommonConstants.COLUMN_INDEX_SEVEN));
				user.setEmail(rs.getString(CommonConstants.COLUMN_INDEX_EIGHT));
				user.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_NINE));
				
				userList.add(user);
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
		
		return userList;
	}
	
	
	public void deleteUser(String userId) {
		
		if(userId != null && !userId.isEmpty()) {
			
			try {
				
				connection = DBConnection.getDBConnection();
				
				preparedStatement = connection
						.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_DELETE_USER_BY_ID));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, userId);
				
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
	
	
	/**
	 * Get user ids
	 */
	public ArrayList<String> getUserIds() {

		ArrayList<String> ids = new ArrayList<String>();

		try {

			connection = DBConnection.getDBConnection();

			preparedStatement = connection
					.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_USER_IDS));

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				ids.add(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
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

		return ids;
	}
		

}
