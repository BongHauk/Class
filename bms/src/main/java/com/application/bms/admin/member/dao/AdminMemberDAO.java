package com.application.bms.admin.member.dao;

import java.util.List;

import com.application.bms.admin.member.dto.AdminDTO;
import com.application.bms.member.dto.MemberDTO;

public interface AdminMemberDAO {
	
	public AdminDTO selectAdminLogin(AdminDTO adminDTO) throws Exception;
	public List<MemberDTO> selectListMember() throws Exception;
	
}
