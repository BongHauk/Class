package com.application.bms.admin.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.admin.member.dao.AdminMemberDAO;
import com.application.bms.admin.member.dto.AdminDTO;
import com.application.bms.member.dto.MemberDTO;

@Service
public class AdminMemberServiceImpl implements AdminMemberService {
	
	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	@Override
	public boolean adminLogin(AdminDTO adminDTO) throws Exception {
		
		if (adminMemberDAO.selectAdminLogin(adminDTO) != null) {
			return true;
		}
		
		return false;
		
	}
	
	public List<MemberDTO> getMemberList() throws Exception{
		return adminMemberDAO.selectListMember();
	}
	
}
