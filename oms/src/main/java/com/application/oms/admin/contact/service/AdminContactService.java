package com.application.oms.admin.contact.service;

import java.util.List;

import com.application.oms.contact.dto.ContactDTO;

public interface AdminContactService {

	public List<ContactDTO> getContactList() throws Exception;
	public ContactDTO getContactDetail(int contactCd) throws Exception;
	public void removeContact(int[] deleteContactCdList) throws Exception;
	public void getDailyNewContactList() throws Exception;
	
}
