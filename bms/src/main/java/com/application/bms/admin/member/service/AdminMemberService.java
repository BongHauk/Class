package com.application.bms.admin.member.service;

import java.util.List;

import com.application.bms.admin.member.dto.AdminDTO;
import com.application.bms.member.dto.MemberDTO;

public interface AdminMemberService {
	
	public boolean adminLogin(AdminDTO adminDTO) throws Exception;
	public List<MemberDTO> getMemberList() throws Exception;
	
}
