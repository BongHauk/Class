package com.application.bms.goods.dao;

import java.util.List;
import java.util.Map;

import com.application.bms.goods.dto.GoodsDTO;

public interface GoodsDAO {
	
	public List<GoodsDTO> selectGoodsList(GoodsDTO goodsDTO) throws Exception;
	public List<GoodsDTO> selectRelatedGoodsList(GoodsDTO goodsDTO) throws Exception;
	public GoodsDTO selectOneGoods(int goodsCd) throws Exception;
	public List<GoodsDTO> selectListSearchGoods(Map<String,Object> searchMap) throws Exception;
	
}
