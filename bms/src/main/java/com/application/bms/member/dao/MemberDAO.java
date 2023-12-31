package com.application.bms.member.dao;

import com.application.bms.member.dto.MemberDTO;

public interface MemberDAO {
	
	public MemberDTO selectLogin(MemberDTO memberDTO) throws Exception;
	public void insertMember(MemberDTO memberDTO) throws Exception;
	public String selectDuplicatedId(String memberId) throws Exception;
	public int selectMyOrderCnt(String memberId) throws Exception;
	public int selectMyCartCnt(String memberId) throws Exception;
	
}
