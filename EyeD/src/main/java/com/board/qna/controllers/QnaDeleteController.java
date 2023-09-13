// DeleteController
package com.board.qna.controllers;

import com.board.qna.model.QnaDAO;
import utils.JSFunction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/qnadelete.do")
public class QnaDeleteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // 매개변수 저장
        String post_num = req.getParameter("post_num");
        QnaDAO dao = new QnaDAO();
        int result = dao.deletePost(post_num);  // 게시물 삭제


        if (result == 1) {  // 게시물 삭제 성공
            JSFunction.alertLocation(resp, "삭제되었습니다.", "../mvcboard/qna.do");
        } else {  // 게시물 삭제 실패
            JSFunction.alertBack(resp, "삭제 실패했습니다.");
        }
    }
}
