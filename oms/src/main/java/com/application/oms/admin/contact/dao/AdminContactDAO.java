package com.application.oms.admin.contact.dao;

import java.util.List;

import com.application.oms.contact.dto.ContactDTO;

public interface AdminContactDAO {

	public List<ContactDTO> selectListContact() throws Exception;
	public ContactDTO selectOneContact(int contactCd) throws Exception;
	public void deleteContact(int[] deleteContactCdList) throws Exception;
	public List<ContactDTO> selectListDailyNewContact(String today) throws Exception;
	
}
