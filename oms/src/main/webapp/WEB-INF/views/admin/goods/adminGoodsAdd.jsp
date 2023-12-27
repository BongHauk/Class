<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<meta charset="utf-8">
<head>
</head>
<body>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${contextPath }/"><i class="fa fa-home"></i>Admin</a>
                        <span>add Goods</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <form action="${contextPath }/admin/goods/adminGoodsAdd" method="post" enctype="multipart/form-data" class="checkout__form" >
                <div class="row">
                    <div class="col-lg-8">
                        <h5>상품등록</h5>
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품이미지<span>*</span> <span class="icon_upload"></span> </p>
                                    <input type="file" name="goodsFileName">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품명 <span>*</span></p>
                                    <input type="text" name="goodsNm" placeholder="상품명을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>작가명 <span>*</span></p>
                                    <input type="text" name="writer" placeholder="작가명을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상호명 <span>*</span></p>
                                    <input type="text" name="publisher" placeholder="상호명를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>가격 <span>*</span></p>
                                    <input type="text" name="price" placeholder="가격을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>할인률 <span>*</span></p>
                                    <input type="text" name="discountRate" placeholder="할인률을 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>재고 <span>*</span></p>
                                    <input type="text" name="stock" placeholder="재고를 입력하세요.">
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
                                    <input type="text" name="point" placeholder="적립 포인트(P)를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>출시일 <span>*</span></p>
                                    <input type="date" name="publishedDt">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>페이지수 <span>*</span></p>
                                    <input type="text" name="totalPage" placeholder="페이지수를 입력하세요.(기본1)">
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품번호 <span>*</span></p>
                                    <input type="text" name="isbn" placeholder="상품번호를 입력하세요.">
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="checkout__form__input">
                                    <p>배송비 <span>*</span></p>
                                    <input type="text" name="deliveryPrice" placeholder="배송비를 입력하세요.">
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
                                    <textarea rows="5" cols="100" name="writerIntro" placeholder="작가소개를 입력하세요."></textarea> 
                               		<script>CKEDITOR.replace("writerIntro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품소개<span>*</span></p>
                                    <textarea rows="5" cols="100" name="contentsOrder" placeholder="상품소개를 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("contentsOrder");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>상품소개(디테일)<span>*</span></p>
                                    <textarea rows="5" cols="100" name="intro" placeholder="상품소개를 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("intro");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>운영자평<span>*</span></p>
                                    <textarea rows="5" cols="100" name="publisherComment" placeholder="운영자평을 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("publisherComment");</script>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="checkout__form__input">
                                    <p>메모<span>*</span></p>
                                    <textarea rows="5" cols="100" name="recommendation" placeholder="메모를 입력하세요."></textarea> 
                                	<script>CKEDITOR.replace("recommendation");</script>
                                </div>
                            </div>
                        </div>
                        <br>
		                <div align="right">
		                	<button type="submit" class="site-btn"><span class="icon_plus"></span> 등록</button>
		                </div>
                    </div>
                </form>
            </div>
        </section>
        <!-- Checkout Section End -->

</body>
 