package com.membercontroller.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.MemberDAO;
import com.member.model.MemberVO;


@WebServlet("/MemberJoinController.do")
public class MemberJoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/eyedmember/Memberjoin.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		
		// 폼에서 입력받은 값 가져오기
		String un = request.getParameter("user_name");
		String pw = request.getParameter("password");
		String uid = request.getParameter("user_id");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String bd = request.getParameter("birthdate");
	
	MemberVO mVo = new MemberVO();
	mVo.setUser_name(un);
	mVo.setPassword(pw);
	mVo.setUser_id(uid);
	mVo.setEmail1(email1);
	mVo.setEmail2(email2);
	mVo.setBirthdate(bd);
	
	MemberDAO mDao = new MemberDAO();
	int result = mDao.MemberInsert(mVo);
	
	HttpSession session = request.getSession();
	
	if(result == 1) {
		session.setAttribute("uid", uid);
		request.setAttribute("message", "회원가입에 성공했습니다");
		response.sendRedirect("eyedmember/MemberFin.jsp");
		
	}else {
		request.setAttribute("message", "회원가입에 실패했습니다");
		response.sendRedirect("eyedmember/MemberJoin.jsp");
		
	}
	
	

}
	public int Idcheck(String user_id) {
		
		int Idcheck = MemberDAO.checkId(user_id);
		return Idcheck;
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//		
//		request.setCharacterEncoding("UTF-8");
//		
//		// 폼에서 입력받은 값 가져오기
//		String un = request.getParameter("user_name");
//		String pw = request.getParameter("password");
//		String uid = request.getParameter("user_id");
//		String email = request.getParameter("email");
//		String bd = request.getParameter("birthdate");
//	
//	MemberVO mVo = new MemberVO();
//	mVo.setUser_name(un);
//	mVo.setPassword(pw);
//	mVo.setUser_id(uid);
//	mVo.setEmail(email);
//	mVo.setBirthdate(bd);
//	
//	MemberDAO mDao = MemberDAO.getInstance();
//	int result = mDao.MemberInsert(mVo);
//	
//	HttpSession session = request.getSession();
//	
//	if(result == 1) {
//		session.setAttribute("uid", uid);
//		request.setAttribute("message", "회원가입에 성공했습니다");
//	}else {
//		request.setAttribute("message", "회원가입에 실패했습니다");
//	}
//	RequestDispatcher dispatcher = request.getRequestDispatcher("Memberjoin.jsp");
//	dispatcher.forward(request, response);
//	
//	}

}
