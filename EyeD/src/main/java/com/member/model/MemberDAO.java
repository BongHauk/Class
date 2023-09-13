package com.member.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.member.model.MemberVO;
import common.DBConnPool;

public class MemberDAO extends DBConnPool{
	   
	private static MemberDAO instance = new MemberDAO();
	
	private static MemberDAO getInstance() {
		return instance;
		
	}

	//싱글톤 패턴
	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		
		return conn;
	}
	
	public MemberDAO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int MemberInsert(MemberVO vo) {
	    int result = 0;
	    
	    String query = "INSERT INTO MEMBER_USER (user_no, user_name, password, user_id, email, birthdate) "
                + "VALUES (seq_mem_user_no.NEXTVAL, ?, ?, ?, ?, ?)";
	    
	    try {
		    psmt = con.prepareStatement(query);

	        // Set the values for the prepared statement
	        psmt.setString(1, vo.getUser_name());
	        psmt.setString(2, vo.getPassword());
	        psmt.setString(3, vo.getUser_id());
	        psmt.setString(4, vo.getEmail1() + vo.getEmail2());
	        psmt.setString(5, vo.getBirthdate());

	
	        // Execute the query
	        result = psmt.executeUpdate();

	    } catch (SQLException e) {
	        System.out.println("Error: " + e.getMessage());
	    } finally {
	        // Close resources in reverse order
	        try {
	            if (rs != null) rs.close();
	            if (psmt != null) psmt.close();
	            if (con != null) con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }

	    return result;
	}

	public MemberVO findId(String email, String pwd) throws SQLException {
		MemberVO id = new MemberVO();
		try {
			String sql = "select user_id, user_name from member_user where email=? and password=? ";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, email);
			psmt.setString(2, pwd);
			
			rs = psmt.executeQuery();
			
			System.out.println(rs);
			
			if(rs.next()) {
				id.setUser_id(rs.getString("user_id"));
				id.setUser_name(rs.getString("user_name"));
				
				System.out.println("id : " + id);
				System.out.println("rs.getString(\"user_id\") : " + rs.getString("user_id"));
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) rs.close();
            if (psmt != null) psmt.close();
            if (con != null) con.close();
		}
		return id;
	}
		
	public static int checkId(String user_id) {
		
		
	      String sql = "select * from member where user_id =?";
	      int idCheck = 0;
	      try {
	         psmt = con.prepareStatement(sql);
	         psmt.setString(1, user_id);
	         rs = psmt.executeQuery();
	         
	         if((rs.next() || user_id.equals(""))){
	            idCheck = 0; // 이미 존재하는 경우, 생성 불가능
	         }else {
	            idCheck = 1; //존재하지 않는 경우, 생성 가능
	         }
	         
	      }catch(SQLException e) {
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      return idCheck;
	   }
	   
	public int Signin(MemberVO vo) {
		
		System.out.println(vo.getUser_id());
		System.out.println(vo.getPassword());
		
		
		String sql = "select * from member_user where user_id = ? and password = ?";
		int SignId = 0; 
			
		try {
			
			psmt = con.prepareStatement(sql);
			psmt.setString(1, vo.getUser_id());
			psmt.setString(2, vo.getPassword());
			System.out.println(sql);
			rs = psmt.executeQuery();
			
			if(rs.next()){
				SignId = 1; // 이미 존재하는 경우, 생성 불가능
			 }else {
				 SignId = 2; //존재하지 않는 경우, 생성 가능
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return SignId;
		
	}



}
