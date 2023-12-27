<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<script>
	$().ready(function(){
		
		$("[name='part']").val("${goodsDTO.part}");
		$("[name='sort']").val("${goodsDTO.sort}");
		
	});

</script>
</head>
<body>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${contextPath }/"><i class="fa fa-home"></i>Admin</a>
                        <span>modify Goods</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <form action="${contextPath }/admin/goods/adminGoodsModify" method="post" enctype="multipart/form-data" class="checkout__form" >
                <input type="hidden" name="goodsCd" value="${goodsDTO.goodsCd }">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>상품수정</h5>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품이미지<span>*</span></p>
                                    <input type="file" name="goodsFileName" value="${goodsDTO.goodsFileName }">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품명 <span>*</span></p>
                                    <input type="text" name="goodsNm" value="${goodsDTO.goodsNm }">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>작가명 <span>*</span></p>
                                    <input type="text" name="writer" value="${goodsDTO.writer }">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상호명 <span>*</span></p>
                                    <input type="text" name="publisher" value="${goodsDTO.publisher }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>가격 <span>*</span></p>
                                    <input type="text" name="price" value="${goodsDTO.price }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>할인률 <span>*</span></p>
                                    <input type="text" name="discountRate" value="${goodsDTO.discountRate }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>재고 <span>*</span></p>
                                    <input type="text" name="stock" value="${goodsDTO.stock }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>분류 <span>*</span></p>
                                      <select name="sort">
                                    	<option value="general">일반상품</option>
                                    	<option value="new">신규상품</option>
                                    	<option value="best">인기상품</option>
                                    	<option value="steady">대표상품</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>적립포인트(P) <span>*</span></p>
                                    <input type="text" name="point" value="${goodsDTO.point }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>출시일 <span>*</span></p>
                                    <input type="date" name="publishedDt" value='<fmt:formatDate value="${goodsDTO.publishedDt }" pattern="yyyy-MM-dd"/>'>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>페이지수 <span>*</span></p>
                                    <input type="text" name="totalPage" value="${goodsDTO.totalPage }">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품번호 <span>*</span></p>
                                    <input type="text" name="isbn" value="${goodsDTO.isbn }">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>배송비 <span>*</span></p>
                                    <input type="text" name="deliveryPrice" value="${goodsDTO.deliveryPrice }">
                                </div>
                            </div>
                           <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>분류<span>*</span></p>
                                    <select name="part">
                                    	<option value="programming">엽서</option>
                                    	<option value="network">그립톡</option>
                                    	<option value="server">달력</option>
                                    	<option value="cloud">포스터</option>
                                    	<option value="bigData">인형</option>
                                    	<option value="artificialIntelligence">스티커</option>
                                    	<option value="certificate">키링</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>작가소개<span>*</span></p>
                                    <textarea rows="5" cols="100" name="writerIntro">${goodsDTO.writerIntro }</textarea> 
                               		<script>CKEDITOR.replace("writerIntro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품소개<span>*</span></p>
                                    <textarea rows="5" cols="100" name="contentsOrder" > ${goodsDTO.contentsOrder }</textarea> 
                                	<script>CKEDITOR.replace("contentsOrder");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품소개(디테일)<span>*</span></p>
                                    <textarea rows="5" cols="100" name="intro">${goodsDTO.intro }</textarea> 
                                	<script>CKEDITOR.replace("intro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>운영자평<span>*</span></p>
                                    <textarea rows="5" cols="100" name="publisherComment" >${goodsDTO.publisherComment }</textarea> 
                                	<script>CKEDITOR.replace("publisherComment");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>메모<span>*</span></p>
                                    <textarea rows="5" cols="100" name="recommendation">${goodsDTO.recommendation }</textarea> 
                                	<script>CKEDITOR.replace("recommendation");</script>
                                </div>
                            </div>
                        </div>
                    <br>
	                <div align="right">
	                	<button type="submit" class="site-btn"><span class="icon_pencil-edit"></span> 수정</button>
	                </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->

</body>
 