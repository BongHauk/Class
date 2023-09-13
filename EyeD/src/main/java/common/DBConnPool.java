package common;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConnPool {
    public static Connection con;
    public static Statement stmt;
    public static PreparedStatement psmt;
    public static ResultSet rs;
    
    // 기본 생성자
    public DBConnPool() {
        try {
            // 컨텍스트(InitialContext)를 통해 커넥션 풀(DataSource)을 얻어옴
            Context initCtx = new InitialContext();
            Context envCtx = (Context) initCtx.lookup("java:comp/env");
            DataSource ds = (DataSource) envCtx.lookup("jdbc/oracle");

            // 커넥션 풀을 통해 연결 얻어옴
            con = ds.getConnection();

            System.out.println("DB 커넥션 풀 연결 성공");
        } catch (Exception e) {
            System.out.println("DB 커넥션 풀 연결 실패");
            e.printStackTrace();
        }
    }

    // 연결 해제(자원 반납)
    public static void close() {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (psmt != null) psmt.close();
            if (con != null) con.close();  // 자동으로 커넥션 풀로 반납됨

            System.out.println("DB 커넥션 풀 자원 반납");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}