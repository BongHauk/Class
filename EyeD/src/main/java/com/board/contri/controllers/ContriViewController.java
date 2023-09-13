package com.board.contri.controllers;

import com.board.contri.model.ContriDAO; 
import com.board.contri.model.ContriVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/contriview.do")
public class ContriViewController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // 게시물
        ContriDAO dao = new ContriDAO();
        String post_num = req.getParameter("post_num");
        dao.updateVisitCount(post_num);
        ContriVO vo = dao.selectView(post_num);


        vo.setContent(vo.getContent().replaceAll("\r\n", "<br/>"));


        req.setAttribute("vo", vo);
        req.getRequestDispatcher("/boardcontri/contriview.jsp").forward(req, resp);
    }
}