package com.board.qna.controllers;

import com.board.qna.model.QnaDAO;
import com.board.qna.model.QnaVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/qnaview.do")
public class QnaViewController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // 게시물
        QnaDAO dao = new QnaDAO();
        String post_num = req.getParameter("post_num");
        dao.updateVisitCount(post_num);
        QnaVO vo = dao.selectView(post_num);


        vo.setContent(vo.getContent().replaceAll("\r\n", "<br/>"));


        req.setAttribute("vo", vo);
        req.getRequestDispatcher("/boardqna/qnaview.jsp").forward(req, resp);
    }
}