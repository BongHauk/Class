<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="org.jsoup.Jsoup"%>
<%@ page import="org.jsoup.nodes.*"%>
<%@ page import="org.jsoup.select.*"%>
<% 

String URL = "https://news.naver.com/main/main.naver?mode=LSD&mid=shm&sid1=105";
Document doc = Jsoup.connect(URL).get();

//헤드라인 제목
Elements elem = doc.getElementsByAttributeValue("class","sh_text");
Elements h1 = elem.select("a");
String h2 = h1.get(0).text();
String h3 = h1.get(2).text();
String h4 = h1.get(4).text();
String h5 = h1.get(6).text();
String h6 = h1.get(8).text();

//이미지 링크
Elements eelem = doc.getElementsByAttributeValue("class","sh_thumb_inner");
Elements e1 = eelem.select("a");
Element e2 = e1.get(0);

String e2a = eelem.select("a").get(0).attr("href");
String e3a = eelem.select("a").get(1).attr("href");
String e4a = eelem.select("a").get(2).attr("href");
String e5a = eelem.select("a").get(3).attr("href");
String e6a = eelem.select("a").get(4).attr("href");

//이미지
Elements gelem = doc.getElementsByAttributeValue("class","sh_thumb_inner");
Elements g1 = eelem.select("img");
Element g2 = e1.get(0);

String g2a = gelem.select("img").get(0).attr("src");
String g3a = gelem.select("img").get(1).attr("src");
String g4a = gelem.select("img").get(2).attr("src");
String g5a = gelem.select("img").get(3).attr("src");
String g6a = gelem.select("img").get(4).attr("src");

//작은 글
Elements relem = doc.getElementsByAttributeValue("class","sh_text_lede");
Elements r1 = eelem.select("div");
Element r2 = relem.get(0);

String r2a = r2.text();

String r3a = relem.get(1).text();
String r4a = relem.get(2).text();
String r5a = relem.get(3).text();
String r6a = relem.get(4).text();



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

    <title>Fables Gallery Timeline</title>
    
    <!-- animate.css-->  
    <link href="../assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
    <!-- Load Screen -->
    <link href="../assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
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
    <!-- TIMELINE-->
    <link rel="stylesheet" href="../assets/vendor/timeline/timeline.css">
     <link rel="stylesheet" href="../assets/vendor/timeline/timelify.css">
    <!-- OWL CAROUSEL  --> 
    <link href="../assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
    <link href="../assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
     
    <!-- FABLES CUSTOM CSS FILE -->
    <link href="../assets/custom/css/custom.css" rel="stylesheet">
    <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
    <link href="../assets/custom/css/custom-responsive.css" rel="stylesheet">
    <style>

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
                 <!--    <span class="fables-iconsearch-icon"></span> -->
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
         <h2 class="fables-page-title fables-second-border-color">Hot News</h2>
    </div>
</div>  
<!-- /End Header -->
     
<!-- Start Breadcrumbs -->
<div class="fables-light-background-color">
    <div class="container"> 
        <nav aria-label="breadcrumb">
          <ol class="fables-breadcrumb breadcrumb px-0 py-3">
            <li class="breadcrumb-item"><a href="#" class="fables-second-text-color">Magazine</a></li> 
            <li class="breadcrumb-item active" aria-current="page">Hot News </li>
          </ol>
        </nav> 
    </div>
</div>
<!-- /End Breadcrumbs -->
     
<!-- Start page content -->  
<div class="container"> 
   <div class="timeline multi-event-timeline">
      <span class="fables-second-background-color line"></span>
      
      <ul class="timeline-items"> 
        <h2 class="fables-second-background-color date-circle">TOP1</h2>
        <li class="is-hidden timeline-item">
              
              <div class="fables-blog-cat-block blog-grid-style">  
                  <a href="<%=e2a %>" target="_blank"><img src="<%=g2a %>" alt="" class="w-100"></a>

             </div>
        </li>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style">  
                  <h1 class="font-15 semi-font mx-3 mt-3"><a href="<%=e2a %>" class="fables-second-text-color fables-main-hover-color" target="_blank">
                      <%=h2 %>
                  </a></h1> 
                  <p class="fables-forth-text-color font-13 m-3">
                     <%=r2a %>
                  </p>

             </div>
        </li> 
        
         
      </ul>

      <ul class="timeline-items"> 
      <h2 class="fables-second-background-color date-circle">TOP2</h2>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style">  
                  <a href="<%=e3a %>" target="_blank"><img src="<%=g3a %>" alt="" class="w-100"></a>

             </div>
        </li>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style"> 
                  <h1 class="font-15 semi-font mx-3 mt-3"><a href="<%=e3a %>" class="fables-second-text-color fables-main-hover-color" target="_blank">
                      <%=h3 %>
                  </a></h1> 
                  <p class="fables-forth-text-color font-13 m-3">
                     <%=r3a %>
                  </p>

             </div>
        </li> 
      </ul>
      <ul class="timeline-items"> 
      <h2 class="fables-second-background-color date-circle">TOP3</h2>
        <li class="is-hidden timeline-item">
              
              <div class="fables-blog-cat-block blog-grid-style">  
                  <a href="<%=e4a %>" target="_blank"><img src="<%=g4a %>" alt="" class="w-100"></a>

             </div>
        </li>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style">  
                  <h1 class="font-15 semi-font mx-3 mt-3"><a href="<%=e4a %>" class="fables-second-text-color fables-main-hover-color" target="_blank">
                      <%=h4 %>
                  </a></h1> 
                  <p class="fables-forth-text-color font-13 m-3">
                     <%=r4a %>
                  </p>

             </div>
        </li> 
      </ul>

      <ul class="timeline-items"> 
      <h2 class="fables-second-background-color date-circle">TOP4</h2>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style">  
                  <a href="<%=e5a %>" target="_blank"><img src="<%=g5a %>" alt="" class="w-100""></a>

             </div>
        </li>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style">  
                  <h1 class="font-15 semi-font mx-3 mt-3"><a href="<%=e5a %>" class="fables-second-text-color fables-main-hover-color" target="_blank">
                      <%=h5 %>
                  </a></h1>  
                  <p class="fables-forth-text-color font-13 m-3">
                     <%=r5a %>
                  </p>

             </div>
        </li> 
      </ul>
      <ul class="timeline-items"> 
      <h2 class="fables-second-background-color date-circle">TOP5</h2>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style">  
                  <a href="<%=e6a %>" target="_blank"><img src="<%=g6a %>" alt="" class="w-100"></a>

             </div>
        </li>
        <li class="is-hidden timeline-item">
             
              <div class="fables-blog-cat-block blog-grid-style">  
                  <h1 class="font-15 semi-font mx-3 mt-3"><a href="<%=e6a %>" class="fables-second-text-color fables-main-hover-color" target="_blank">
                      <%=h6 %>
                  </a></h1> 
                  <p class="fables-forth-text-color font-13 m-3">
                     <%=r6a %>
                  </p>

             </div>
        </li> 
      </ul>


    </div>


</div>   
<!-- /End page content -->
    
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
    
<script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
<script src="../assets/vendor/loadscreen/js/ju-loading-screen.js"></script>
<script src="../assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
<script src="../assets/vendor/popper/popper.min.js"></script> 
<script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
<script src="../assets/vendor/owlcarousel/owl.carousel.min.js"></script> 
<script src="../assets/vendor/WOW-master/dist/wow.min.js"></script>
<script src="../assets/vendor/timeline/jquery.timelify.js"></script>
<script src="../assets/vendor/timeline/timeline.js"></script>
<script src="../assets/vendor/timeline/modernizr.js"></script>
<script src="../assets/custom/js/custom.js"></script>
</body>
</html>