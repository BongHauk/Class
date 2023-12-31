package com.application.bms.order.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.application.bms.member.service.MemberService;
import com.application.bms.order.dto.OrderDTO;
import com.application.bms.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/orderGoods")
	public ModelAndView orderGoods(@RequestParam("goodsCd") int goodsCd , @RequestParam("orderGoodsQty") int orderGoodsQty , HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();  			
		mv.setViewName("/order/orderGoods");
		
		HttpSession session = request.getSession();
		
		mv.addObject("orderer"       , orderService.getOrdererDetail((String)session.getAttribute("memberId")));
		mv.addObject("goodsDTO"      , orderService.getGoodsDetail(goodsCd));
		mv.addObject("orderGoodsQty" , orderGoodsQty);
		
		return mv;
		
	}
	
	
	@PostMapping("/orderGoods")
	public ResponseEntity<Object> orderGoods(OrderDTO orderDTO , @RequestParam("point") int point ,  HttpServletRequest request) throws Exception{
		
		orderService.addOrder(orderDTO , point);
		
		HttpSession session = request.getSession();
		session.setAttribute("myOrderCnt" , memberService.getMyOrderCnt(orderDTO.getMemberId()));
		
		String jsScript= "<script>";
				jsScript += " alert('상품을 주문하였습니다.');";
				jsScript +=" location.href='" + request.getContextPath() + "/goods/goodsDetail?goodsCd=" + orderDTO.getGoodsCd()+"';";
				jsScript +="</script>";
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
			
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
		
	}
	
	
	@GetMapping("/orderCartGoods")
	public ModelAndView orderCartGoods(@RequestParam("goodsCdList") String goodsCds , 
									   @RequestParam("cartGoodsQtyList") String cartGoodsQtyList , 
									   @RequestParam("cartCdList") String cartCdList ,
									   HttpServletRequest request) throws Exception{
		
		String[] temp = goodsCds.split(",");
		int[] goodsCdList = new int[temp.length];
		
		for (int i = 0; i < goodsCdList.length; i++) {
			goodsCdList[i] = Integer.parseInt(temp[i]);
		}
		
		ModelAndView mv = new ModelAndView();  			
		mv.setViewName("/order/orderCartGoods");
		
		HttpSession session = request.getSession();
		session.setAttribute("myOrderCnt" , memberService.getMyOrderCnt((String)session.getAttribute("memberId")));
		session.setAttribute("myCartCnt" , memberService.getMyCartCnt((String)session.getAttribute("memberId")));
		
		
		mv.addObject("orderer"           , orderService.getOrdererDetail((String)session.getAttribute("memberId")));
		mv.addObject("goodsList"         , orderService.getGoodsListByCart(goodsCdList));
		mv.addObject("orderGoodsQtyList" , cartGoodsQtyList);
		mv.addObject("goodsCdList"       , goodsCds);
		mv.addObject("cartCdList"        , cartCdList);
		
		return mv;
		
	}
	
	
	@PostMapping("/orderCartGoods")
	public ResponseEntity<Object> orderCartGoods(@RequestParam Map<String,String> orderListMap ,  HttpServletRequest request) throws Exception{
		
		orderService.addOrderByCart(orderListMap);
		
		HttpSession session = request.getSession();
		session.setAttribute("myOrderCnt" , memberService.getMyOrderCnt(orderListMap.get("memberId")));
		session.setAttribute("myCartCnt"  , memberService.getMyCartCnt(orderListMap.get("memberId")));

		
		String jsScript = "<script>";
			   jsScript += "alert('상품을 주문하였습니다.');";
			   jsScript += "location.href='" + request.getContextPath() + "/myPage/myOrderList'";
			   jsScript +="</script>";
		
	    HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
	    return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
		
	}
	

}
