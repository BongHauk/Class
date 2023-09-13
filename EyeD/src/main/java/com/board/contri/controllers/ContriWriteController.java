package com.board.contri.controllers;

import com.board.contri.model.ContriDAO; 
import com.board.contri.model.ContriVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/contriwrite.do")
public class ContriWriteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/boardcontri/contriwrite.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String user_id = req.getParameter("user_id");
        String title = req.getParameter("title");
        String content = req.getParameter("content");


        ContriVO vo = new ContriVO();
        vo.setUser_id(user_id);
        vo.setTitle(title);
        vo.setContent(content);

        ContriDAO dao = new ContriDAO();
        int result = dao.insertWrite(vo);


        if (result == 1) {  // 글쓰기 성공
            resp.sendRedirect("../mvcboard/contri.do");
        } else {  // 글쓰기 실패
            resp.sendRedirect("../mvcboard/contriwrite.do");
        }
    }
}
