<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<div class="custom-select-box">
                    <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
						<option>오밀이</option>
						<option>조밀이</option>
						<option>꼼이</option>
						<option>쥐락이</option>
					</select>
                </div>
                <div class="right-phone-box">
                    <p>Call :- <a href="#"> 010 5610 2724</a></p>
                </div>
                <div class="our-link">
                    <ul>
                        <li><a href="${contextPath }/myPage/myInfo?memberId=${sessionScope.memberId}"><i class="fa fa-user s_color"></i>내정보</a></li>
                        <li><a href="${contextPath}/contact/addContact"><i class="fas fa-headset"></i>문의하기</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            
				<div class="login-box">
					<c:choose>
                   		<c:when test="${sessionScope.memberId eq null }">
	                        <div class="selectpicker show-tick form-control" style="background-color:#FFDC52;">
	                            <a href="${contextPath }/member/login">Login</a>
	                            /
	                            <a href="${contextPath }/member/register">Register</a>
	                        </div>
                   		</c:when>
                   		<c:otherwise>
	                        <div class="selectpicker show-tick form-control" style="background-color:#FFDC52;">
	                            <a href="${contextPath }/member/logout">logout</a>
	                        </div>
                   		</c:otherwise>
                   	</c:choose>
				</div>
                <div class="text-slid-box">
                    <div id="offer-box" class="carouselTicker">
                        <ul class="offer-box">
                            <li>
                                <i class="fab fa-opencart"></i> Hi.By_Yeni
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 어서오세요 반가워요
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 귀여운 친구들을 만나러 오셨군요
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 오밀조밀 꼼쥐락
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 작고 귀여운 친구들과 함께 놀아요
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 기다리고 있을게요 
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
                <a class="navbar-brand" href="${contextPath}/"><img src="${contextPath }/resources/bootstrap/images/Yeni_03.PNG" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="${contextPath}/">홈</a></li>
                    <li class="nav-item"><a class="nav-link" href="${contextPath }/goods/goodsList?sort=all&part=all">친구들</a></li>
                    
                    		<c:choose>
                        		<c:when test="${sessionScope.role eq 'admin'}">
		                             <li class="dropdown">
		                             	<a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">Management</a>
		                                <ul class="dropdown-menu">
	                        			 <li><a href="${contextPath }/admin/goods/adminGoodsList">Goods Management</a></li>
	                        			 <li><a href="${contextPath }/admin/member/adminMemberList">User Management</a></li>
	                        			 <li><a href="${contextPath }/admin/order/adminOrderList">Order Management</a></li>
	                        			 <li><a href="${contextPath }/admin/contact/contactList">Contact Management</a></li>
		                                </ul>
		                             </li>
                        		</c:when>
                        		<c:otherwise>
		                             <li class="dropdown">
		                             	<a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">마이페이지</a>
		                                <ul class="dropdown-menu">
			                             <li><a href="${contextPath }/myPage/myInfo?memberId=${sessionScope.memberId}"><span class="icon_info"></span> My Info</a></li>
			                             <li><a href="${contextPath }/myPage/myCartList"><span class="icon_cart"></span> My Cart</a></li>
			                             <li><a href="${contextPath }/myPage/myOrderList"><span class="icon_chat_alt"></span> My Order</a></li>
		                             	</ul>
		                             </li>
				                    <li >
				                    	<a href="${contextPath}/contact/addContact" class="nav-link">문의하기</a>
				                    </li>
                        		</c:otherwise>
                        	</c:choose>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul class="header__right__widget">
                            <li class="side-menu">
                            	<a href="${contextPath }/myPage/myCartList">
                            		<i class="fa fa-shopping-bag"></i>
	                                <c:choose>
	                                	<c:when test="${sessionScope.role == 'client'}">
			                                <span class="badge">${sessionScope.myCartCnt }</span>
			                                <p>장바구니</p>
	                                	</c:when>
	                                	<c:otherwise>
	                                		<span class="badge">0</span>
	                                		<p>장바구니</p>
	                                	</c:otherwise>
	                                </c:choose>
                            	</a>
                            </li>
                            <li>
                            	<a href="${contextPath }/myPage/myOrderList">
                            		<span class="icon_bag_alt"></span>
                                 	<c:choose>
                                		<c:when test="${sessionScope.role == 'client' }">
		                                	<span class="badge">${sessionScope.myOrderCnt }</span>
		                                	<p>주문</p>
                                		</c:when>
                                		<c:otherwise>
                                			<span class="badge">0</span>
                                			<p>주문</p>
                                		</c:otherwise>
                                	</c:choose>
                            	</a>
                           	</li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
        
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->


</body>
</html>