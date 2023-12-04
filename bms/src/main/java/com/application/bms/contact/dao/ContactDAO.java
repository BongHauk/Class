package com.application.bms.contact.dao;

import com.application.bms.contact.dto.ContactDTO;

public interface ContactDAO {

	public void insertContact(ContactDTO contactDTO) throws Exception;
	
}
