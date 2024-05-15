package com.event.service.company;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

import com.event.model.company.company;
import com.event.util.CommonConstants;
import com.event.util.CommonUtil;
import com.event.util.DBConnection;
import com.event.util.QueryUtil;

public class ICompanyServiceImp implements ICompanyService {
	
	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
	
	static
	{
		createcompanyTable();
	}

	public static void createcompanyTable()
	{
		try
		{
			connection = DBConnection.getDBConnection();
			
			stmt = connection.createStatement();
			
			stmt.execute(QueryUtil.queryById(CommonConstants.QUERY_ID_CREATE_COMPANY_TABLE));
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

	
	
	
	public void addCompany(company company) {
		
		String companyId = CommonUtil.generatecompanyIds(getcompanyIds());
		 
		System.out.println("ICompanyServiceImp addcompany UserName: before try" + company.getUserName());
		try
		{
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_INSERT_COMPANY));
			connection.setAutoCommit(false);
			
			company.setCompanyId(companyId);
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, company.getCompanyId());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, company.getUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, company.getPassword());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, company.getLocation());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, company.getType());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, company.getNumberofemp());
			
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
	public ArrayList<company> getcompany(String CompanyId) {
		
			
			ArrayList<company> companyList = new ArrayList<company>();
			
			try {
				
				connection = DBConnection.getDBConnection();
				
				preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ALL_COMPANIES));
				
				ResultSet rs = preparedStatement.executeQuery();
				
				while(rs.next()) {
					
					company cp = new company();
					
					cp.setCompanyId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
					cp.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
					cp.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
					cp.setLocation(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
					cp.setType(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
					cp.setNumberofemp(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
					
					companyList.add(cp);
					
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
			
			return companyList;
		
	}

	public ArrayList<company> getcompanyById(String CompanyId) {
		
		
	    ArrayList<company> companyList = new ArrayList<company>();
	    
	    try {
	        connection = DBConnection.getDBConnection();
	        preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_COMPANY_BY_ID));
	        preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, CompanyId);
	        ResultSet rs = preparedStatement.executeQuery();
	        
	        while (rs.next()) {
	            company cp = new company();
	            cp.setCompanyId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
	            cp.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
	            cp.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
	            cp.setLocation(rs.getString(CommonConstants.COLUMN_INDEX_FOUR)); 
	            cp.setType(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));
	            cp.setNumberofemp(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
	            
	            companyList.add(cp);
	        }
	    } catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
	        System.out.println(e.getMessage());
	    } finally {
	        // Close resources
	        try {
	            if (connection != null) {
	                connection.close();
	            }
	            if (preparedStatement != null) {
	                preparedStatement.close();
	            }
	        } catch (SQLException e) {
	            System.out.println(e.getMessage());
	        }
	    }
	    
	    return companyList;
	}

	

		
	public void Updatecompany(String companyId, company company) {
		 
		
		
		
		
		try
		{
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_UPDATE_COMPANY));
			connection.setAutoCommit(false);
				
			
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, company.getUserName());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_TWO, company.getPassword());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_THREE, company.getLocation());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FOUR, company.getType());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_FIVE, company.getNumberofemp());
			preparedStatement.setString(CommonConstants.COLUMN_INDEX_SIX, company.getCompanyId());

			
			
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
	public void deletecompany(String companyId) {
if(companyId != null && !companyId.isEmpty()) {
			
			try {
				
				connection = DBConnection.getDBConnection();
				
				preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_DELETE_COMPANY));
				preparedStatement.setString(CommonConstants.COLUMN_INDEX_ONE, companyId);
				
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
	public ArrayList<String> getcompanyIds()
	{
		ArrayList<String> ids = new ArrayList<String>();
		
		try 
		{
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_COMPANY_IDS));
			
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

	@Override
	public ArrayList<company> getcompany() 
	{
		
		ArrayList<company> companyList = new ArrayList<company>();
		
		try {
			
			connection = DBConnection.getDBConnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryById(CommonConstants.QUERY_ID_GET_ALL_COMPANY));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				
				company cp = new company();
				
				cp.setCompanyId(rs.getString(CommonConstants.COLUMN_INDEX_ONE));
				cp.setUserName(rs.getString(CommonConstants.COLUMN_INDEX_TWO));
				cp.setPassword(rs.getString(CommonConstants.COLUMN_INDEX_THREE));
				cp.setLocation(rs.getString(CommonConstants.COLUMN_INDEX_FOUR));
				cp.setType(rs.getString(CommonConstants.COLUMN_INDEX_FIVE));;
				cp.setNumberofemp(rs.getString(CommonConstants.COLUMN_INDEX_SIX));
				
				companyList.add(cp);
				
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
		
		return companyList;
	
	}

}
//
//
//	@Override
//	public company getcompanybyId(String CompanyId) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//}
//




