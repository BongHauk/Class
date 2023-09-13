package com.board.controllers;

import com.board.free.model.FreeDAO;
import com.board.free.model.FreeVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/write.do")
public class WriteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.getRequestDispatcher("/boardfree/freewrite.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String user_id = req.getParameter("user_id");
        String title = req.getParameter("title");
        String content = req.getParameter("content");


        FreeVO vo = new FreeVO();
        vo.setUser_id(user_id);
        vo.setTitle(title);
        vo.setContent(content);

        FreeDAO dao = new FreeDAO();
        int result = dao.insertWrite(vo);


        if (result == 1) {  // 글쓰기 성공
            resp.sendRedirect("../mvcboard/list.do");
        } else {  // 글쓰기 실패
            resp.sendRedirect("../mvcboard/write.do");
        }
    }
}
