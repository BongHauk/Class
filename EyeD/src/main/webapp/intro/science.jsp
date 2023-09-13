<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*"%>
<%@ page import="org.jsoup.Jsoup"%>
<%@ page import="org.jsoup.nodes.*"%>
<%@ page import="org.jsoup.select.*"%>
<% 

//헤드라인 제목
String URL = "https://yozm.wishket.com/magazine/list/develop/";
Document doc = Jsoup.connect(URL).get();


Elements elem = doc.getElementsByAttributeValue("class","item-title link-text link-underline text900");
Elements h1 = elem.select("a");

String h2 = h1.get(0).text();
String h3 = h1.get(1).text();
String h4 = h1.get(2).text();
String h5 = h1.get(3).text();


System.out.println("헤드라인 ******************* = " + h2);

//이미지 링크
Elements eelem = doc.getElementsByAttributeValue("class","item-thumbnail-pc");

String e2a = eelem.select("a").get(0).attr("href");
String e3a = eelem.select("a").get(1).attr("href");
String e4a = eelem.select("a").get(2).attr("href");
String e5a = eelem.select("a").get(3).attr("href");


System.out.println("이미지링크    ******************* = " + e2a);
System.out.println("https://yozm.wishket.com" + e2a);

//  https://yozm.wishket.com/magazine/detail/2132/


//이미지
Elements gelem = doc.getElementsByAttributeValue("class","item-thumbnail-pc");

String g2a = gelem.select("img").get(0).attr("src");
String g3a = gelem.select("img").get(1).attr("src");
String g4a = gelem.select("img").get(2).attr("src");
String g5a = gelem.select("img").get(3).attr("src");

System.out.println("이미지 ******************* = " + g2a);

// https://yozm.wishket.com/media/news/2132/%EB%A7%88%EC%8A%A4%EC%BD%94%ED%8A%B8_%EC%84%A4%EB%AC%B8%EC%A7%802x.png
// https://yozm.wishket.com/media/news/2126/1.png

//작은 글
Elements relem = doc.getElementsByAttributeValue("class","item-description");
Elements r1 = relem.select("p");

String r2a = r1.get(0).text();
String r3a = r1.get(1).text();
String r4a = r1.get(2).text();
String r5a = r1.get(3).text();
System.out.println("작은글 ******************* = " + r2a);

%>
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
   
      .intro6 { 
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
      
      .intro7 { 
         
         margin-top: -10px;
         display: block;
         content: "";
         width: 100px;
         border-bottom: 4px solid
         
      }
      
      .intro7 { 
         width:192px;
         height:0px;
         position:absolute;
         left:0px;
         top:218px;
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
   
   .w-100{
      height:150px;
      
   }
   
   .scbox{
      
     margin-left:700px;
     margin-top: 80px;
   
   }
   
   .sc1{
       
   display: inline-block;
    height: 200px;
    width: 700px;
      
   }
   
   .sc2{
       
   display: inline-block;
    height: 200px;
    width: 700px;
      
   }
   
   .sc3{
       
   display: inline-block;
    height: 200px;
    width: 700px;
      
   }
   
   .sc4{
       
   display: inline-block;
    height: 200px;
    width: 700px;
      
   }
   
   .side{
   position:absolute;
   top:-60px;
   left: -45px;
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
         <h2 class="fables-page-title fables-second-border-color">기술 블로그</h2>
    </div>
</div>  
<!-- /End Header -->
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color">
    <div class="container"> 
        <nav aria-label="breadcrumb">
          <ol class="fables-breadcrumb breadcrumb px-0 py-3">
            <li class="breadcrumb-item"><a href="#" class="fables-second-text-color">소개</a></li> 
            <li class="breadcrumb-item active" aria-current="page">기술 블로그 </li>
          </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
   
   
   <div class="intro1" >
   <div class="side">
      <div class="intro2"></div>
      <div class="intro3"></div>
      <div  class="intro4">Eye:D</div>
      <div  class="intro5"><a style="text-decoration:none" href=../intro/Introduce.jsp>사이트 소개</a></div>
   
       <div  class="intro6"><a style="text-decoration:none" href="">기술 블로그</a></div>
   
      <div class="intro7"></div>
   </div>
   </div>
   

           
            
            <div class="row">
            <div class="scbox">
               
                <div class="col-12 col-md-4 mb-4 mb-lg-5">
            <div class="sc1">
                    <a href="https://yozm.wishket.com<%=e2a %>" target="_blank"><img src="https://yozm.wishket.com/media/news/2134/%EC%82%AC%EC%A7%841.png" 
                                                                    alt="" class="w-100"></a>
                    <h2 class="font-18 semi-font font-18  mt-3"><a href="https://yozm.wishket.com<%=e2a %>"
                          target="_blank"><%=h2 %></a></h2>
                    
                    <p class="fables-forth-text-color font-14">
                        <%=r2a %>
                    </p>
                    <a href="https://yozm.wishket.com<%=e2a %>" class="btn fables-main-text-color fables-second-hover-color p-0 underline mt-2" target="_blank">Read
                        More</a>

                </div>
                </div>
                
               
                <div class="col-12 col-md-4 mb-4 mb-lg-5">
                 <div class="sc2">
                    <a href="https://yozm.wishket.com<%=e3a %>" target="_blank"><img src="https://yozm.wishket.com<%=g3a %>" alt="" class="w-100"></a>
                    <h2 class="font-18 semi-font font-18  mt-3"><a href="https://yozm.wishket.com<%=e3a %>"
                           target="_blank"><%=h3 %></a></h2>
                    
                    <p class="fables-forth-text-color font-14">
                        <%=r3a %>
                    </p>
                    <a href="https://yozm.wishket.com<%=e3a %>" class="btn fables-main-text-color fables-second-hover-color p-0 underline mt-2" target="_blank">Read
                        More</a>

                </div>
                </div>
                
                <div class="col-12 col-md-4 mb-4 mb-lg-5">
                <div class="sc3">
                    <a href="https://yozm.wishket.com<%=e4a %>" target="_blank"><img src="https://yozm.wishket.com<%=g4a %>" alt="" class="w-100"></a>
                    <h2 class="font-18 semi-font font-18  mt-3"><a href="https://yozm.wishket.com<%=e4a %>"
                            target="_blank"><%=h4 %></a></h2>
                    
                    <p class="fables-forth-text-color font-14">
                        <%=r4a %>
                    </p>
                    <a href="https://yozm.wishket.com<%=e4a %>" class="btn fables-main-text-color fables-second-hover-color p-0 underline mt-2" target="_blank">Read
                        More</a>

                </div>
                </div>
                
               
                <div class="col-12 col-md-4 mb-4 mb-lg-5">
                 <div class="sc4">
                    <a href=https://yozm.wishket.com<%=e5a %> target="_blank"><img src=https://yozm.wishket.com<%=g5a %> alt="" class="w-100"></a>
                    <h2 class="font-18 semi-font font-18  mt-3"><a href=https://yozm.wishket.com<%=e5a %>
                           target="_blank"><%=h5 %></a></h2>
                  
                    <p class="fables-forth-text-color font-14">
                        <%=r5a %>
                    </p>
                    <a href="https://yozm.wishket.com<%=e5a %>" class="btn fables-main-text-color fables-second-hover-color p-0 underline mt-2" target="_blank">Read
                        More</a>

                </div>
                </div>
                </div>
          </div>
    
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