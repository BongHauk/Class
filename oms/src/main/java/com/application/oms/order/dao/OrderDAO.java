package com.application.oms.order.dao;

import java.util.List;
import java.util.Map;

import com.application.oms.goods.dto.GoodsDTO;
import com.application.oms.member.dto.MemberDTO;
import com.application.oms.order.dto.OrderDTO;

public interface OrderDAO {
	
	public void insertOrder(OrderDTO orderDTO) throws Exception;
	public MemberDTO selectOneOrderer(String memberId) throws Exception;
	public GoodsDTO selectOneCartGoods(int goodsCd) throws Exception;
	public List<GoodsDTO> selectListCartGoods(int[] goodsCdList) throws Exception;
	public void insertOrderByCart(List<OrderDTO> orderList) throws Exception;
	public void updateGoodsStockCnt(Map<String,Object> orderMap) throws Exception;
	public void updateMemberPoint(Map<String,Object> orderMap) throws Exception;
	public void updateGoodsStockCntByCart(List<Map<String,Integer>> goodsMapList) throws Exception;
	public void updateMemberPointByCart(Map<String,Object> memberMap) throws Exception;
	public void deleteCartByOrder(int[] cartCdList)  throws Exception;

}
