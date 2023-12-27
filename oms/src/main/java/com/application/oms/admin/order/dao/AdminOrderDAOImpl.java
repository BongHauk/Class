package com.application.oms.admin.order.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.application.oms.admin.order.dao.AdminOrderDAO;

@Repository
public class AdminOrderDAOImpl implements AdminOrderDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Map<String,Object>> selectListOrder() throws Exception{
		return sqlSession.selectList("admin.order.selectListOrder");
	}
	
}
