package com.board.contri.model;

import com.board.contri.model.ContriVO;
import common.DBConnPool;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ContriDAO extends DBConnPool {

    public ContriDAO() {
        super();

    }

    // 검색 조건에 맞는 게시물의 개수를 반환합니다.
    public int selectCount(Map<String, Object> map) {

        System.out.println("selectcount실행");

        int totalCount = 0;
        String query = "SELECT COUNT(*) FROM contri_board";
        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchField") + " "
                    + " LIKE '%" + map.get("searchWord") + "%'";
        }
        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (Exception e) {
            System.out.println("게시물 카운트 중 예외 발생");
            e.printStackTrace();
        }

        return totalCount;

    }

    // 검색 조건에 맞는 게시물 목록을 반환합니다(페이징 기능 지원).
    public List<ContriVO> selectListPage(Map<String, Object> map) {
        List<ContriVO> board = new ArrayList<ContriVO>();
        String query = " "
                + "SELECT * FROM ( "
                + "    SELECT Tb.*, ROWNUM rNum FROM ( "
                + "        SELECT * FROM contri_board";

        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchField")
                    + " LIKE '%" + map.get("searchWord") + "%' ";
        }

        query += "        ORDER BY post_num DESC "
                + "    ) Tb "
                + " ) "
                + " WHERE rNum BETWEEN ? AND ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());
            rs = psmt.executeQuery();

            while (rs.next()) {
                ContriVO vo = new ContriVO();

                vo.setPost_num(rs.getInt(1));
                vo.setUser_id(rs.getString(2));
                vo.setTitle(rs.getString(3));
                vo.setContent(rs.getString(4));
                vo.setCreatedate(rs.getDate(5));
                vo.setView_count(rs.getInt(6));

                board.add(vo);
            }
        } catch (Exception e) {
            System.out.println("게시물 조회 중 예외 발생");
            e.printStackTrace();
        }
        return board;
    }


    // 게시글 데이터를 받아 DB에 추가합니다(파일 업로드 지원).
    public int insertWrite(ContriVO vo) {

        int result = 0;

        String query = "INSERT INTO contri_board( "
                + " post_num, title, user_id, content) "
                + " VALUES ( "
                + " contri_post_num.NEXTVAL,?,?,?)";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, vo.getTitle());
            psmt.setString(2, vo.getUser_id());
            psmt.setString(3, vo.getContent());

            result = psmt.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return result;
    }

    // 주어진 일련번호에 해당하는 게시물을 DTO에 담아 반환합니다.
    public ContriVO selectView(String post_num) { //타입

        ContriVO vo = new ContriVO();  // DTO 객체 생성
        String query = "SELECT * FROM contri_board WHERE post_num=?";  // 쿼리문 템플릿 준비
        try {
            psmt = con.prepareStatement(query);  // 쿼리문 준비
            psmt.setString(1, post_num);  // 인파라미터 설정
            rs = psmt.executeQuery();  // 쿼리문 실행

            if (rs.next()) {  // 결과를 DTO 객체에 저장
                vo.setPost_num(rs.getInt(1));
                vo.setUser_id(rs.getString(2));
                vo.setTitle(rs.getString(3));
                vo.setContent(rs.getString(4));
                vo.setCreatedate(rs.getDate(5));
                vo.setView_count(rs.getInt(6));
            }
        } catch (Exception e) {
            System.out.println("게시물 상세보기 중 예외 발생");
            e.printStackTrace();
        }
        return vo;
    }

    // 주어진 일련번호에 해당하는 게시물의 조회수를 1 증가시킵니다.
    public void updateVisitCount(String post_num) {
        String query = "UPDATE contri_board SET "
                + " view_count = view_count+1 "
                + " WHERE post_num=?";
        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, post_num);
            psmt.executeQuery();
        } catch (Exception e) {
            System.out.println("게시물 조회수 증가 중 예외 발생");
            e.printStackTrace();
        }
    }

//

    // 입력한 비밀번호가 지정한 // 다운로드 횟수를 1 증가시킵니다.
    ////    public void downCountPlus(String i) {
    ////        String sql = "UPDATE free_board_test SET "
    ////                + " downcount=downcount+1 "
    ////                + " WHERE idx=? ";
    ////        try {
    ////            psmt = con.prepareStatement(sql);
    ////            psmt.setString(1, idx);
    ////            psmt.executeUpdate();
    ////        } catch (Exception e) {
    ////        }
    ////    }
    //
    // 일련번호의 게시물의 비밀번호와 일치하는지 확인합니다.
//    public boolean confirmPassword(String pass, String idx) {
//
//        boolean isCorr = true;
//        try {
//            String sql = "SELECT COUNT(*) FROM mvcboard WHERE pass=? AND idx=?";
//            psmt = con.prepareStatement(sql);
//            psmt.setString(1, pass);
//            psmt.setString(2, idx);
//            rs = psmt.executeQuery();
//            rs.next();
//            if (rs.getInt(1) == 0) {
//                isCorr = false;
//            }
//        } catch (Exception e) {
//            isCorr = false;
//            e.printStackTrace();
//        }
//        return isCorr;
//    }

    // 지정한 일련번호의 게시물을 삭제합니다.
    public int deletePost(String post_num) {
        int result = 0;

        try {
            String query = "DELETE FROM contri_board WHERE post_num=?";
            psmt = con.prepareStatement(query);
            psmt.setString(1, post_num);
            result = psmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("게시물 삭제 중 예외 발생");
            e.printStackTrace();
        }

        return result;
    }

    // 게시글 데이터를 받아 DB에 저장되어 있던 내용을 갱신합니다(파일 업로드 지원).
    public int updatePost(ContriVO vo) {

        int result = 0;

        try {
            // 쿼리문 템플릿 준비
            String query = "UPDATE contri_board"
                    + " SET title=?, user_id=?, content=? "
                    + " WHERE post_num=?";

            // 쿼리문 준비
            psmt = con.prepareStatement(query);
            psmt.setString(1, vo.getTitle());
            psmt.setString(2, vo.getUser_id());
            psmt.setString(3, vo.getContent());
            psmt.setInt(4, vo.getPost_num());

            // 쿼리문 실행
            result = psmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("게시물 수정 중 예외 발생");
            e.printStackTrace();
        }

        return result;
    }
}








