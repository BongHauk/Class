package com.application.oms.member.service;

import com.application.oms.member.dto.MemberDTO;

public interface MemberService {

	public boolean login(MemberDTO memberDTO) throws Exception;
	public void addMember(MemberDTO memberDTO) throws Exception;
	public String checkDuplicatedId(String memberId) throws Exception;
	public int getMyOrderCnt(String memberId) throws Exception;
	public int getMyCartCnt(String memberId) throws Exception;
}
