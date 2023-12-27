package com.application.oms.contact.dao;

import com.application.oms.contact.dto.ContactDTO;

public interface ContactDAO {

	public void insertContact(ContactDTO contactDTO) throws Exception;
	
}
