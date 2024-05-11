package com.event.service.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.event.util.CommonConstants;
import com.event.util.CommonUtil;
import com.event.util.DBConnection;
import com.event.util.QueryUtil;
import com.event.model.admin.Admin;

public class AdminServiceImpl implements IAdminService {

	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;

	static {

		crateUserTable();
		createAdminTable();
	}

	public static void crateUserTable() {

		try {

			connection = DBConnection.getDBConnection();

			stmt = connection.createStatement();

			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_USER_TABLE));

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
	}

	public static void createAdminTable() {

		try {

			connection = DBConnection.getDBConnection();

			stmt = connection.createStatement();

			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_ADMIN_TABLE));

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
	}

	@Override
	public void addAdmin(Admin admin) {

		String adminId = CommonUtil.generateAdminIDs(getAdminIds());

		try {

			connection = DBConnection.getDBConnection();

			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_ADMIN));
			connection.setAutoCommit(false);

			admin.setAdminId(adminId);

			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, admin.getAdminId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, admin.getUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, admin.getName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, admin.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, admin.getPhoneNum());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, admin.getEmail());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, admin.getPassword());

			preparedStatement.executeLargeUpdate();
			connection.commit();

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

	@Override
	public Admin getAdminByID(String adminId) {

		Admin admin = new Admin();

		try {

			connection = DBConnection.getDBConnection();

			preparedStatement = connection
					.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ADMIN_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, adminId);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {

				admin.setAdminId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				admin.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				admin.setName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				admin.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				admin.setPhoneNum(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				admin.setEmail(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
				admin.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_SEVEN));
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

	@Override
	public ArrayList<Admin> getAdminById(String adminId) {

		ArrayList<Admin> adminList = new ArrayList<Admin>();

		System.out.println("Admin service impl admin id: parameter " + adminId);
		try {

			connection = DBConnection.getDBConnection();

			preparedStatement = connection
					.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ADMIN_BY_ID));
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, adminId);

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {

				Admin admin = new Admin();

				admin.setAdminId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				admin.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				admin.setName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				admin.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				admin.setPhoneNum(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				admin.setEmail(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
				admin.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_SEVEN));
				
				System.out.println("Admin service impl admin id: inside while loop " + admin.getAdminId());

				adminList.add(admin);
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

		return adminList;

	}

	public ArrayList<String> getAdminIds() {

		ArrayList<String> ids = new ArrayList<String>();

		try {

			connection = DBConnection.getDBConnection();

			preparedStatement = connection
					.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ADMIN_IDS));

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

	@Override
	public ArrayList<Admin> getAdmins() {

		ArrayList<Admin> adminList = new ArrayList<Admin>();

		try {

			connection = DBConnection.getDBConnection();

			preparedStatement = connection
					.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ALL_ADMINS));

			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {

				Admin admin = new Admin();

				admin.setAdminId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				admin.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				admin.setName(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				admin.setAddress(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				admin.setPhoneNum(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
				admin.setEmail(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
				admin.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_SEVEN));

				adminList.add(admin);

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
		return adminList;
	}

	@Override
	public void updateAdmin(String adminId, Admin admin) {

		try {
			
			System.out.println("Update admin adminserviceimpl admin id try block: passed parameter" + adminId);

			connection = DBConnection.getDBConnection();

			preparedStatement = connection
					.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_UPDATE_ADMIN_BY_ID));
			connection.setAutoCommit(false);

			admin.setAdminId(adminId);

			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, admin.getUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, admin.getName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, admin.getAddress());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, admin.getPhoneNum());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, admin.getEmail());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, admin.getPassword());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SEVEN, admin.getAdminId());
			
			System.out.println("Update admin adminserviceimpl admin id try block: get from model" + admin.getAdminId());

			preparedStatement.executeLargeUpdate();
			connection.commit();

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

	@Override
	public void deleteAdmin(String adminId) {

		if (adminId != null && !adminId.isEmpty()) {

			try {

				connection = DBConnection.getDBConnection();

				preparedStatement = connection
						.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_DELETE_ADMIN_BY_ID));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, adminId);

				preparedStatement.execute();

			} catch (SQLException | SAXException | IOException | ParserConfigurationException
					| ClassNotFoundException e) {

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
}
