package com.board.qna.controllers;

import com.board.qna.model.QnaDAO;
import com.board.qna.model.QnaVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/qnawrite.do")
public class QnaWriteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/boardqna/qwrite.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String user_id = req.getParameter("user_id");
        String title = req.getParameter("title");
        String content = req.getParameter("content");


        QnaVO vo = new QnaVO();
        vo.setUser_id(user_id);
        vo.setTitle(title);
        vo.setContent(content);

        QnaDAO dao = new QnaDAO();
        int result = dao.insertWrite(vo);


        if (result == 1) {  // 글쓰기 성공
            resp.sendRedirect("../mvcboard/qna.do");
        } else {  // 글쓰기 실패
            resp.sendRedirect("../mvcboard/qnawrite.do");
        }
    }
}
