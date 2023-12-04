package com.application.bms.admin.goods.service;

import java.util.List;

import com.application.bms.goods.dto.GoodsDTO;

public interface AdminGoodsService {
	
	public List<GoodsDTO> getGoodsList() throws Exception;
	public void addNewGoods(GoodsDTO goodsDTO) throws Exception;
	public void modifyGoods(GoodsDTO goodsDTO) throws Exception;
	public void removeGoods(int goodsCd) throws Exception;
	
}
