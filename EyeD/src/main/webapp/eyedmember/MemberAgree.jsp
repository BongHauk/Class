<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>    
<!DOCTYPE html>
<html lang="en">
<head>
<title> Fables Blog </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Fables">
    <meta name="author" content="Enterprise Development">
    <link rel="shortcut icon" href="../assets/custom/images/shortcut.png">


<!-- 회원가입 CSS 시작 -->
<style>
    .circles{
        display: inline;
        float: left;
    }
    .circl{ 
            width:100px;
            height:100px;
            border-radius:50%;
            background:#000000;
            font-size:16px;
            color: #ffffff;
            text-align:center;  /*가로정렬*/
            line-height:100px;  /*세로 정렬*/ 
            margin-bottom: 10px;
            }
    .circl1{
            width:100px;
            height:100px;
            border-radius:50%;
            background:#747474;
            font-size:16px;
            text-align:center;  /*가로정렬*/
            line-height:100px;  /*세로 정렬*/ 
            margin-bottom: 10px;
            }
    .circl2{
            float: left;
            width:100px;
            height:100px;
            border-radius:50%;
            background:#747474;
            font-size:16px;
            text-align:center;  /*가로정렬*/
            line-height:100px;  /*세로 정렬*/ 
            
            }            
    /* #yak{

    }

    #jung{

    }

    #ga{

    } */

/* 
    .ci {
        width: 70px;
        height: 70px;
        border-radius: 50%;
        background-color: black;
        margin-bottom: 10px;
    } */

    #content {
        float:right; 
        margin-left: 50px; 
        border: 1px solid black; 
        text-align: center;
    }
    #content1 {
        padding: 30px;
        float:right; 
        margin-left: 50px;
        border: 1px solid black; 
        text-align: center; 
        margin-top: 40px;
                        
    }
    button {
        text-align:center;
    }
    .nextbtn{
        display: inline;
        float: right;
    }
    .row1{
        display: inline;
        float: right;
    }
    #blnk{
        height: 100px;
    }
    
    .fables-header-icons{
		position: relative;
	}
	
	.fables-iconuser{
	
		position: absolute;
		left: 1360px;
		top: 22px;
	}
	
	.fables-iconsearch-icon{
		position: absolute;
		left:1400px;
		top:21px;
	}
	
	.mainimage{
		text-align: center;
	}
	.a{
	
		position: absolute;
		left: 1360px;
		top: 5px;
	}
	
	.b{
	
		position: absolute;
		left: 1360px;
		top: 5px;
	}
</style>
  

<!-- 회원가입 CSS 끝 -->
    <!-- animate.css-->
    <link href="../assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
        rel="stylesheet">
    <!-- Font Awesome 5 -->
    <link href="../assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- Fables Icons -->
    <link href="../assets/custom/css/fables-icons.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
    <!-- portfolio filter gallery -->
    <link href="../assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.css" rel="stylesheet">
    <!-- FANCY BOX -->
    <link href="../assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet">
    <!-- RANGE SLIDER -->
    <link href="../assets/vendor/range-slider/range-slider.css" rel="stylesheet">
    <!-- OWL CAROUSEL  -->
    <link href="../assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
    <link href="../assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
    <!-- FABLES CUSTOM CSS FILE -->
    <link href="../assets/custom/css/custom.css" rel="stylesheet">
    <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
    <link href="../assets/custom/css/custom-responsive.css" rel="stylesheet">


</head>


<body>
    <div id="ju-loading-screen">
        <div class="sk-double-bounce">
            <div class="sk-child sk-double-bounce1"></div>
            <div class="sk-child sk-double-bounce2"></div>
        </div>
    </div>
    
    <!-- Start Middle Header -->
    <div class="fables-navigation fables-middle-background-color py-3 py-lg-0">
        <div class="col-12 col-md-2 col-lg-3 pr-md-0 icons-header-mobile">

            <div class="fables-header-icons">
                <!-- 1. Search -> nav에 나타내서 검색되게 하기 -->
                <a href="#"
                    class="open-search fables-third-text-color right  middle-header-link px-3 px-md-2 px-lg-4 fables-second-hover-color border-0 max-middle-line-height">
<!--                     <span class="fables-iconsearch-icon"></span> -->
                </a>
                <!-- 2. Sign In -> 로그인으로 이동시키기 -->
                <%		
                	if(id == null ){
                		
                %>
                	<a href="eyedmember/sigin.jsp"
	                    class="fables-third-text-color fables-second-hover-color font-13 middle-header-link px-3 px-md-2 px-lg-4 max-middle-line-height">
	                    <span class="a">LOGIN</span>
                	</a>
                <%}else{ %>
                	<a href="MemberSignoutController.do"
	                    class="fables-third-text-color fables-second-hover-color font-13 middle-header-link px-3 px-md-2 px-lg-4 max-middle-line-height">
	                    <span class="b">LOGOUT</span>
	            
                	</a>
                <%} %>
            </div>
        </div>
    </div>
    <!-- /End Middle Header -->
    
    <!-- Start Fables Navigation  메인메뉴 -->
    <div class="fables-navigation fables-main-background-color py-3 py-lg-0">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-10 col-lg-9 pr-md-0">
                    <nav class="navbar navbar-expand-md btco-hover-menu py-lg-2">
                        <!-- 로고 및 홈이동 버튼이 될 태그 -->
                        <a class="navbar-brand pl-0" href="../Main.jsp"><img src="../assets/custom/images/logogogo.png"
                                alt="Fables Template" class="fables-logo"></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#fablesNavDropdown" aria-controls="fablesNavDropdown" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="fables-iconmenu-icon text-white font-16"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="fablesNavDropdown">

                            <ul class="navbar-nav mx-auto fables-nav">
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="sub-nav1" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                        Eye:D
                                    </a>
                                    <!-- href 수정 필요 -->
                                    <ul class="dropdown-menu" aria-labelledby="sub-nav1">
                                        <li><a class="dropdown-item" href="../intro/Introduce.jsp">Eye:D</a></li>
                                        <li><a class="dropdown-item" href="../intro/science.jsp">기술블로그</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="sub-nav2" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                        Magazine
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="sub-nav2">
                                        <!-- href 수정 필요 -->
                                        <li><a class="dropdown-item" href="../board/HotNews.jsp">Hot News</a></li>
                                        <li><a class="dropdown-item" href="../board/Network.jsp">Network</a></li>
                                        <li><a class="dropdown-item" href="../board/Security.jsp">Security</a></li>
                                        <li><a class="dropdown-item" href="../board/OpenSource.jsp">Computer</a></li>
                                        <li><a class="dropdown-item" href="../board/DataAnalysis.jsp">IT</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="sub-nav3" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                        Community
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="sub-nav3">
                                        <!-- href 수정 필요 -->
                                        <li><a class="dropdown-item" href="../mvcboard/list.do">자유게시판</a></li>
                                        <li><a class="dropdown-item" href="../mvcboard/contri.do">기고글 둘러보기</a></li>
                                        <li><a class="dropdown-item" href="../mvcboard/qna.do">질문있어요!</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- /End Fables Navigation -->
   
   
<!-- Start Header -->
<div class="fables-header fables-after-overlay">
    <div class="container"> 
         <h2 class="fables-page-title fables-second-border-color">약관동의</h2>
    </div>
</div>  
<!-- /End Header -->
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color">
    <div class="container"> 
        <nav aria-label="breadcrumb">
          <ol class="fables-breadcrumb breadcrumb px-0 py-3">
            <li class="breadcrumb-item"><a href="#" class="fables-second-text-color">로그인</a></li> 
            <li class="breadcrumb-item active" aria-current="page">약관동의 </li>
          </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->

    <div class="container py-4 py-lg-5">
        <div class="fables-blog my-3">
            <h2 class="fables-second-text-color mb-4 mb-lg-5 font-weight-bold">회원가입</h2>
        </div> 
        <hr>
        <br>
             <!-- 상단 콘텐츠 영역  -->
        <div class="circles">
            <div class="circl">
            약관 동의
            </div>
            <div class="circl1">
            회원 정보
            </div>
            <div class="circl2">
            가입 완료
            </div>     
        </div>     
            <!-- 중단 콘텐츠 영역-->
    
        <div class="row">
                <div id="content">
                    <h1 style="text-align: center">서비스 이용약관 동의</h1>
                    <h>이용 약관
    
                        일반
                        이 약관은 로렘입숨(Lorem ipsum)에서 제공하는 서비스를 이용함에 있어 로렘입숨과 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.
                        해당 약관은 로렘입숨의 웹사이트(loremipsumwebsite.com)에서 이루어지는 사용자의 모든 활동에 적용됩니다.
                        로렘입숨은 이용 약관을 개정할 권리를 가지며, 사용자는 변경 사항에 대한 업데이트를 숙지해야 할 책임이 있습니다.
                        
                        로렘입숨은 다음과 같은 업무를 수행합니다.
                        재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
                        구매계약이 체결된 재화 또는 용역의 배송
                        기타 로렘입숨이 정하는 업무
                    </h>
                    <form action="submit.php" method="post">
                    <label>
                        <input type="checkbox" name="agree" required>
                        약관에 동의합니다.
                    </label>
                    <input type="submit" value="동의하기">
                    </form>
                </div>
                
                <div id="content1">
                    <h1 style="text-align:center">개인정보 처리방침 동의</h1>
                    <h>개인정보 처리 방침
                        
                        로렘입숨은 문제가 확인되는 즉시 서비스의 제공을 일시적으로 중단할 수 있습니다.
                        당사는 웹사이트를 사용할 수 없음으로 인해 발생하는 어떠한 손해에 대해서도 책임을 지지 않습니다.
                        
                        계정
                        이용자는 로렘입숨이 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로써 회원 가입을 신청합니다.
                        회원은 로렘입숨에 언제든지 탈퇴를 요청할 수 있으며 로렘입숨은 즉시 회원탈퇴를 처리합니다.
                        당사는 배송 및 청구 주소와 이메일 주소 등 귀하가 주문 시 제공하는 정보를 저장합니다.</h>
                    <form action="submit.php" method="post">
                    <label>
                        <input type="checkbox" name="agree" required>
                        약관에 동의합니다.
                    </label>
                    <input type="submit" value="동의하기">
                    </form>
                </div>
        </div>
            <!-- 하단 컨텐츠 영역 -->
        <div class="row1">
        	  <form action="../eyedmember/MemberJoin.jsp">      
                <button type="submit" style="margin: 40px;
                     background-color: rgb(179, 173, 173); width:105px; text-align:center;">다음</button> 
        	  </form>
        </div>  
    </div>
        <div id="blnk"></div>

      <!-- Start Footer 2 Background Image  -->
    <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3 mt-2 mb-5 text-center">
                   <div class="eyed">
               아이디코리아 유한회사<br>
               대표자명 조규원<br>
               소재지 서울특별시 강남구 아이디로 939800 지원빌딩 18층<br>
               사업자등록번호 1234-56-78910<br>
               이메일 eyed4service@eyed.com<br>
               </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright fables-main-background-color mt-0 border-0 white-color">
        <p class="mb-0">Copyright Copyright Eye:D All rights reserved.</p>
    </div>

    <!-- /End Footer 2 Background Image -->
    
    <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
    <script src="assets/vendor/popper/popper.min.js"></script>
    <script src="assets/vendor/jQuery.countdown-master/jquery.countdown.min.js"></script>
    <script src="assets/vendor/timeline/jquery.timelify.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
    <script src="assets/vendor/owlcarousel/owl.carousel.min.js"></script>
    <script src="assets/vendor/WOW-master/dist/wow.min.js"></script>
    <script src="assets/custom/js/jquery-data-to.js"></script>
    <script src="assets/custom/js/custom.js"></script>
</body>
</html>