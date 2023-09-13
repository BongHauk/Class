<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Fables">
    <meta name="author" content="Enterprise Development">
    <link rel="shortcut icon" href="../assets/custom/images/shortcut.png">

    <title> Fables Blog </title>


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
 <style>
 
 body{
    height: auto;
 }
 
.intro1 { 
   background-color:rgba(255, 255, 255, 1);
    width: 1080px; 
    margin: 0 auto;
    position: relative;
}
.intro2 { 
   background-color:rgba(238.00000101327896, 238.00000101327896, 238.00000101327896, 1);
   width:192px;
   height:144px;
   position:absolute;
   left:0px;
   top:170px;
}
.intro3 { 
   background-color:rgba(217.0000022649765, 217.0000022649765, 217.0000022649765, 1);
   width:192px;
   height:62px;
   position:absolute;
   left:0px;
   top:151px;
}
.intro4 { 
   color:rgba(0, 0, 0, 1);
   width:105px;
   height:23px;
   position:absolute;
   left:24px;
   top:160px;
   font-family:Inter;
   text-align:left;
   font-size:28px;
   letter-spacing:0;
}
.intro5 { 
   color:rgba(0, 0, 0, 1);
   width:170px;
   height:23px;
   position:absolute;
   left:205px;
   top:60px;
   font-family:Inter;
   text-align:left;
   font-size:32px;
   letter-spacing:0;
}
.intro6 { 
   color:rgba(0, 0, 0, 1);
   width:105px;
   height:23px;
   position:absolute;
   left:24px;
   top:235px;
   font-family:Inter;
   text-align:left;
   font-size:16px;
   letter-spacing:0;
}
.intro7 { 
   color:rgba(0, 0, 0, 1);
   width:777px;
   height:62px;
   position:absolute;
   left:281px;
   top:258px;
   font-family:Inter;
   text-align:left;
   font-size:16px;
   letter-spacing:0;
}
.intro8 { 
   color:rgba(0, 0, 0, 1);
   width:777px;
   height:62px;
   position:absolute;
   left:281px;
   top:450px;
   font-family:Inter;
   text-align:left;
   font-size:16px;
   letter-spacing:0;
}
.intro9 { 
   color:rgba(0, 0, 0, 1);
   width:777px;
   height:62px;
   position:absolute;
   left:281px;
   top:378px;
   font-family:Inter;
   text-align:left;
   font-size:16px;
   letter-spacing:0;
}
.intro10 { 
   color:rgba(0, 0, 0, 1);
   width:105px;
   height:23px;
   position:absolute;
   left:24px;
   top:270px;
   font-family:Inter;
   text-align:left;
   font-size:16px;
   letter-spacing:0;
}
.intro11 { 
   color:rgba(0, 0, 0, 1);
   width:105px;
   height:23px;
   position:absolute;
   left:270px;
   top:222px;
   font-family:Inter;
   text-align:left;
   font-size:20px;
   letter-spacing:0;
}
.intro12 { 
   color:rgba(0, 0, 0, 1);
   width:132px;
   height:23px;
   position:absolute;
   left:269px;
   top:345px;
   font-family:Inter;
   text-align:left;
   font-size:20px;
   letter-spacing:0;
}
.intro13 { 
   color:rgba(0, 0, 0, 1);
   width:231px;
   height:23px;
   position:absolute;
   left:270px;
   top:417px;
   font-family:Inter;
   text-align:left;
   font-size:20px;
   letter-spacing:0;
}
.intro14 { 
   
   margin-top: -10px;
   display: block;
   content: "";
   width: 100px;
   border-bottom: 4px solid
   
}

.intro14 { 
   width:192px;
   height:0px;
   position:absolute;
   left:0px;
   top:218px;
}
.intro15 { 
   border:1px solid rgba(0, 0, 0, 1);
}
.intro15{ 
   width:783px;
   height:0px;
   position:absolute;
   left:269px;
   top:249px;
}
.intro16 { 
   border:1px solid rgba(0, 0, 0, 1);
}
.intro16 { 
   width:783px;
   height:0px;
   position:absolute;
   left:269px;
   top:369px;
}
.intro17 { 
   border:1px solid rgba(0, 0, 0, 1);
}
.intro17 { 
   width:783px;
   height:0px;
   position:absolute;
   left:269px;
   top:441px;
}

.info1{
   position:absolute;
   top:-100px;
   left: -60px;

}


.info2{
   position:absolute;
   top:-70px;
   left: -60px;

}

.info3{
   position:absolute;
   top:-70px;
   left: -60px;

}

.side{
   position:absolute;
   top:-80px;
   left: -45px;
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
   
   .footer{
   width: 100%;

    position: absolute;  
    
    top:1000px;
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
      <!--               <span class="fables-iconsearch-icon"></span> -->
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
         <h2 class="fables-page-title fables-second-border-color">사이트 소개</h2>
    </div>
</div>  
<!-- /End Header -->
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color">
    <div class="container"> 
        <nav aria-label="breadcrumb">
          <ol class="fables-breadcrumb breadcrumb px-0 py-3">
            <li class="breadcrumb-item"><a href="#" class="fables-second-text-color">소개</a></li> 
            <li class="breadcrumb-item active" aria-current="page">사이트 소개 </li>
          </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
   
   <div class="intro1" >
   
   <div  class="intro5">Eye:D 소개</div>
   
   <div class="info1">
   <div  class="intro11">EyeD, inc</div>
   <div class="intro15"></div>
   <div  class="intro7">Eye:D 는 Eye - 시각 시선 그리고 show 혹은 See 하는 역할을 하는 신체기관인 눈. 으로서 IT관련 소식을 ‘보여’주는 사이트 임을 표현하며 Difference - 사이트 만든이 5명의 성이 다르듯 각자 다른시각으로서 ‘다양성’ 과 ‘차별성’ 을 
  의미한다. 발음 그대로의 (id)는 identity 의 약자로 앞서 의미한 ‘차별성’과  ‘독자성’을 다시한번 중의적으로 표현한다.</div>
  </div>
  <div class="info2">
      <div  class="intro12">The makers</div>
      <div class="intro16"></div>
      <div  class="intro9">신입 개발자 4명이 모여 첫 프로젝트인 아이티 메거진 홈페이지를 제작했다.</div>
  </div>
  <div class="info3">
      <div  class="intro13">Development Process</div>
      <div class="intro17"></div>
     
     <div  class="intro8">계획-분석-설계-구현-테스트의 과정을 거치며 제작한 아이티 메거진 사이트이다.</div>
  </div>
  
    <div class="side">
       <div class="intro2"></div>
      <div class="intro3"></div>
      <div  class="intro4">Eye:D</div>
      <div  class="intro6"><a style="text-decoration:none" href="">사이트 소개</a></div>
      <div  class="intro10"><a style="text-decoration:none" href=../intro/science.jsp>기술 블로그</a></div>
      <div class="intro14"></div>
   </div>
   

 </div>
 <div></div>
 
      <!-- Start Footer 2 Background Image  -->
    <div class=footer>
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