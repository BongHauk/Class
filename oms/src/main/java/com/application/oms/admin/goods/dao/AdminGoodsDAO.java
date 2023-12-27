package com.application.oms.admin.goods.dao;

import java.util.List;

import com.application.oms.goods.dto.GoodsDTO;

public interface AdminGoodsDAO {
	
	public List<GoodsDTO>selectListGoods() throws Exception;
	public void insertGoods(GoodsDTO goodsDTO) throws Exception;
	public void updateGoods(GoodsDTO goodsDTO) throws Exception;
	public void deleteGoods(int goodsCd) throws Exception;
	
}
