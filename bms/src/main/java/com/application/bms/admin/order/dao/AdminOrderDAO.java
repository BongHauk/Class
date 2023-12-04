package com.application.bms.admin.order.dao;

import java.util.List;
import java.util.Map;

public interface AdminOrderDAO {
	
	public List<Map<String,Object>> selectListOrder() throws Exception;
	
}
