package com.board.qna.controllers;

//import utils.BoardPage;

import com.board.qna.model.QnaDAO;
import com.board.qna.model.QnaVO;
import utils.BoardPage;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@WebServlet("/mvcboard/qna.do")
public class QnaListController extends HttpServlet {
    private static final long serialVersionUID = 1L;


    public QnaListController() {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QnaDAO dao = new QnaDAO();

        System.out.println("동작확인");
        System.out.println("동작확인");
        System.out.println("동작확인");

        Map<String, Object> map = new HashMap<String, Object>();

        String searchField = request.getParameter("searchField");
        String searchWord = request.getParameter("searchWord");

        if (searchWord != null) {
            map.put("searchField", searchField);
            map.put("searchWord", searchWord);
        }

        int totalCount = dao.selectCount(map);

        ServletContext application = getServletContext();
        int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
        int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));

        int pageNum = 1;  // 기본값
        String pageTemp = request.getParameter("pageNum");
        if (pageTemp != null && !pageTemp.equals(""))
            pageNum = Integer.parseInt(pageTemp);

        int start = (pageNum - 1) * pageSize + 1;  // 첫 게시물 번호
        int end = pageNum * pageSize; // 마지막 게시물 번호
        map.put("start", start);
        map.put("end", end);

        List<QnaVO> boardLists = dao.selectListPage(map);
        dao.close();

        String pagingImg = BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, "../mvcboard/qna.do");

        map.put("pagingImg", pagingImg);
        map.put("totalCount", totalCount);
        map.put("pageSize", pageSize);
        map.put("pageNum", pageNum);

        request.setAttribute("boardLists", boardLists);
        request.setAttribute("map", map);

        request.getRequestDispatcher("../board.qna/QnaList.jsp").forward(request, response);

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}