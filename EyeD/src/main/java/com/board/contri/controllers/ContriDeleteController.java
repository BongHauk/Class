// DeleteController
package com.board.contri.controllers;

import com.board.contri.model.ContriDAO;
import utils.JSFunction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/mvcboard/contridelete.do")
public class ContriDeleteController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // 매개변수 저장
        String post_num = req.getParameter("post_num");
        ContriDAO dao = new ContriDAO();
        int result = dao.deletePost(post_num);  // 게시물 삭제


        if (result == 1) {  // 게시물 삭제 성공
            JSFunction.alertLocation(resp, "삭제되었습니다.", "../mvcboard/contri.do");
        } else {  // 게시물 삭제 실패
            JSFunction.alertBack(resp, "삭제 실패했습니다.");
        }
    }
}
