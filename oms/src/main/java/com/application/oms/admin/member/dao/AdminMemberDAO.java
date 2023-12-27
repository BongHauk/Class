package com.application.oms.admin.member.dao;

import java.util.List;

import com.application.oms.admin.member.dto.AdminDTO;
import com.application.oms.member.dto.MemberDTO;

public interface AdminMemberDAO {
	
	public AdminDTO selectAdminLogin(AdminDTO adminDTO) throws Exception;
	public List<MemberDTO> selectListMember() throws Exception;
	
}
