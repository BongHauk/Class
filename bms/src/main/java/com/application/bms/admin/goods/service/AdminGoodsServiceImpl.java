package com.application.bms.admin.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.application.bms.admin.goods.dao.AdminGoodsDAO;
import com.application.bms.goods.dto.GoodsDTO;


@Service
public class AdminGoodsServiceImpl implements AdminGoodsService {
	
	@Autowired
	private AdminGoodsDAO adminGoodsDAO;

	@Override
	public List<GoodsDTO> getGoodsList() throws Exception {
		return adminGoodsDAO.selectListGoods();
	}

	@Override
	public void addNewGoods(GoodsDTO goodsDTO) throws Exception {
		adminGoodsDAO.insertGoods(goodsDTO);
	}

	@Override
	public void modifyGoods(GoodsDTO goodsDTO) throws Exception {
		adminGoodsDAO.updateGoods(goodsDTO);
	}

	@Override
	public void removeGoods(int goodsCd) throws Exception {
		adminGoodsDAO.deleteGoods(goodsCd);
	}
	
	
}
