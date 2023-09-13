package com.board.controllers;

import com.board.free.model.FreeDAO;
import com.board.free.model.FreeVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/view.do")
public class ViewController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // 게시물
        FreeDAO dao = new FreeDAO();
        String post_num = req.getParameter("post_num");
        dao.updateVisitCount(post_num);
        FreeVO vo = dao.selectView(post_num);


        vo.setContent(vo.getContent().replaceAll("\r\n", "<br/>"));


        req.setAttribute("vo", vo);
        req.getRequestDispatcher("/boardfree/freeview.jsp").forward(req, resp);
    }
}