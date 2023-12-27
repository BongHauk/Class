package com.application.oms.admin.member.service;

import java.util.List;

import com.application.oms.admin.member.dto.AdminDTO;
import com.application.oms.member.dto.MemberDTO;

public interface AdminMemberService {
	
	public boolean adminLogin(AdminDTO adminDTO) throws Exception;
	public List<MemberDTO> getMemberList() throws Exception;
	
}
