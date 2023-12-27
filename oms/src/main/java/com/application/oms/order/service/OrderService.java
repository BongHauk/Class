package com.application.oms.order.service;

import java.util.List;
import java.util.Map;

import com.application.oms.goods.dto.GoodsDTO;
import com.application.oms.member.dto.MemberDTO;
import com.application.oms.order.dto.OrderDTO;

public interface OrderService {
	
	public void addOrder(OrderDTO orderDTO, int point) throws Exception;
	public MemberDTO getOrdererDetail(String memberId) throws Exception;
	public GoodsDTO getGoodsDetail(int goodsCd) throws Exception;
	public List<GoodsDTO> getGoodsListByCart(int[] goodsCdList) throws Exception;
	public void addOrderByCart(Map<String,String> orderListMap)  throws Exception;
	
}
