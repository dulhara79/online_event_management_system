
package com.event.service.company;


import java.util.ArrayList;

import com.event.model.company.company;



public interface ICompanyService 
{
	public void addCompany(company company);
	
	public ArrayList<company> getcompany(String CompanyId);
	
	public ArrayList<company> getcompany();
	
	public ArrayList<company> getcompanyById(String CompanyId);
	
	public company getcompanybyId(String CompanyId);
	
	public void Updatecompany(String companyId, company company);
	
	public void deletecompany(String companyId);
}

