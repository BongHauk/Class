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

@WebServlet("/MemberSigninController.do")
public class MemberSigninController extends HttpServlet{


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/eyedmember/sigin.jsp");
		dispatcher.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		String id = req.getParameter("user_id");
		String pwd = req.getParameter("user_pw");
		
		MemberVO mVo = new MemberVO();
		mVo.setUser_id(id);
		mVo.setPassword(pwd);
		
		MemberDAO mDao = new MemberDAO();
		int result = mDao.Signin(mVo);
		
		System.out.println(result);
		
		HttpSession session = req.getSession();
		
		if(result == 1) {
			session.setAttribute("id", id);
			req.setAttribute("message", "회원가입에 성공했습니다");
			resp.sendRedirect("./Main.jsp");
			
		}else {
			req.setAttribute("message", "회원가입에 실패했습니다");
			resp.sendRedirect("eyedmember/sigin.jsp");
			
		}
	}


	
}
