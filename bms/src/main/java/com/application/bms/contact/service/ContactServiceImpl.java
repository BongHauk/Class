package com.application.bms.contact.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.contact.dao.ContactDAO;
import com.application.bms.contact.dto.ContactDTO;

@Service
public class ContactServiceImpl implements ContactService{

	@Autowired
	private ContactDAO contactDAO;

	@Override
	public void addNewContact(ContactDTO contactDTO) throws Exception {
		contactDAO.insertContact(contactDTO);
	}

}
