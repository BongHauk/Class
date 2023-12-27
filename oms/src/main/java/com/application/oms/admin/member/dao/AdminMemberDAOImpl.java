package com.application.oms.admin.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.oms.admin.member.dao.AdminMemberDAO;
import com.application.oms.admin.member.dto.AdminDTO;
import com.application.oms.member.dto.MemberDTO;

@Repository
public class AdminMemberDAOImpl implements AdminMemberDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public AdminDTO selectAdminLogin(AdminDTO adminDTO) throws Exception{
	   return sqlSession.selectOne("admin.member.selectAdminLogin" , adminDTO);
	}
	
	public List<MemberDTO> selectListMember() throws Exception{
		return sqlSession.selectList("admin.member.selectListMember");
	}
	
}
