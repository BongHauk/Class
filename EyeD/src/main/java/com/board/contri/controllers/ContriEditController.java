package com.board.contri.controllers;

import com.board.contri.model.ContriDAO; 
import com.board.contri.model.ContriVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/mvcboard/contriedit.do")
public class ContriEditController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String post_num = req.getParameter("post_num");
        ContriDAO dao = new ContriDAO();
        com.board.contri.model.ContriVO vo = dao.selectView(post_num);
        req.setAttribute("vo", vo);
        req.getRequestDispatcher("/boardcontri/contriedit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String post_num = req.getParameter("post_num");
        String user_id = req.getParameter("user_id");
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        ContriVO vo = new ContriVO();
        vo.setPost_num(Integer.parseInt(post_num));
        vo.setUser_id(user_id);
        vo.setTitle(title);
        vo.setContent(content);

        ContriDAO dao = new ContriDAO();
        int result = dao.updatePost(vo);


        // 성공 or 실패?
        if (result == 1) {  // 수정 성공
            resp.sendRedirect("../mvcboard/contriview.do?post_num=" + post_num);
        } else {  // 수정 실패
            resp.sendRedirect("../mvcboard/contriedit.do");
        }
    }
}