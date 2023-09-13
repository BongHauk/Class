package com.algoda.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.model.MemberDAO;
import com.member.model.MemberVO;
import common.DBConnPool;

@WebServlet("/controller/login.do")
public class Idfindcontroller extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   
    public Idfindcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }
    
//    public class IdfindService {
//    }
    
    

   
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       request.setCharacterEncoding("utf-8");
       System.out.println("현재 위치 : IdFindController ======================");
      
      String email = request.getParameter("email");
      String pwd = request.getParameter("pwd");
      
      System.out.println(email+pwd);
      
      
      //http://localhost:9999/controller/login.do?email=rlag2%40naver.com&pwd=rkrkrk123
          
          
//          MemberDAO memberdao = new MemberDAO();
//
//          MemberVO mdto = memberdao.findId(email, pwd);

          MemberDAO memberdao = new MemberDAO();

          MemberVO mdto = null;
          
          try {
          mdto = new MemberDAO().findId(email, pwd);
          
          
       } catch (SQLException e) {
          // TODO Auto-generated catch block
          e.printStackTrace();
       }
      
      
   
      
      
      System.out.println("dto : " + mdto);

      if(mdto != null) {
         
         request.setAttribute("memberVO", mdto);
         request.getRequestDispatcher("../findIdResult.jsp").forward(request, response);
         
      }else {
         response.setContentType("text/html; charset=UTF-8");
           PrintWriter out = response.getWriter();
           out.println("<script>");
           out.println("alert('등록된 정보가 없습니다')");
           out.println("history.back()");
           out.println("</script>");
      }
      
      
      
   }
    
    

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      doGet(request, response);
   }

}