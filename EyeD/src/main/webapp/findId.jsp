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
    <link rel="shortcut icon" href="assets/custom/images/shortcut.png">

    <title> Fables Blog </title>


    <!-- animate.css-->
    <link href="assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
        rel="stylesheet">
    <!-- Font Awesome 5 -->
    <link href="assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- Fables Icons -->
    <link href="assets/custom/css/fables-icons.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
    <!-- portfolio filter gallery -->
    <link href="assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.css" rel="stylesheet">
    <!-- FANCY BOX -->
    <link href="assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet">
    <!-- RANGE SLIDER -->
    <link href="assets/vendor/range-slider/range-slider.css" rel="stylesheet">
    <!-- OWL CAROUSEL  -->
    <link href="assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
    <!-- FABLES CUSTOM CSS FILE -->
    <link href="assets/custom/css/custom.css" rel="stylesheet">
    <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
    <link href="assets/custom/css/custom-responsive.css" rel="stylesheet">
    
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
	
	.nani{
		padding-left: 540px;
		margin-bottom: 30px;
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
                   <!-- <span class="fables-iconsearch-icon"></span> --!>
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
                        <a class="navbar-brand pl-0" href="#"><img src="https://myawsbuckeu.s3.ap-northeast-2.amazonaws.com/images/logogogo.png"
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
                                        <li><a class="dropdown-item" href="intro/Introduce.jsp">Eye:D</a></li>
                                        <li><a class="dropdown-item" href="intro/science.jsp">기술블로그</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="sub-nav2" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                        Magazine
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="sub-nav2">
                                        <!-- href 수정 필요 -->
                                        <li><a class="dropdown-item" href="board/HotNews.jsp">Hot News</a></li>
                                        <li><a class="dropdown-item" href="board/Network.jsp">Network</a></li>
                                        <li><a class="dropdown-item" href="board/Security.jsp">Security</a></li>
                                        <li><a class="dropdown-item" href="board/OpenSource.jsp">Computer</a></li>
                                        <li><a class="dropdown-item" href="board/DataAnalysis.jsp">IT</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="sub-nav3" data-toggle="dropdown"
                                        aria-haspopup="true" aria-expanded="false">
                                        Community
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="sub-nav3">
                                        <!-- href 수정 필요 -->
                                        <li><a class="dropdown-item" href="./mvcboard/list.do">자유게시판</a></li>
                                        <li><a class="dropdown-item" href="./mvcboard/contri.do">기고글 둘러보기</a></li>
                                        <li><a class="dropdown-item" href="./mvcboard/qna.do">질문있어요!</a></li>
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

   	<div class="nani">
	   <div class="card align-middle" style="width: 25rem; background-color:transparent; border-color:white; justify-content: center; ">
	      <div class="card-title" style="margin-top:30px; text-align:center">    
	         <h2 class="card-title" style="color:#f58b34; text-align:center"><img src="https://myawsbuckeu.s3.ap-northeast-2.amazonaws.com/images/logogogo.png" width="250px" /></h2>
	      </div>
	
	        
	   <form method="get" action="./controller/login.do">
	      
	      <form name="idfindFrm">
	       
			<div class="checkbox">
	             
	             <div style="color: #000000; margin-right: 20px; text-align:center;"><아이디 찾기></div> 
	        
	        </div>
	      	
	      	<div class="card-body">
	          
	        <input type="text" name="email" id="email" class="form-control" placeholder="이메일을 입력하세요" autofocus><BR>
	        
	        <input type="password" name="pwd" id="pwd" class="form-control" placeholder="비밀번호를 입력하세요"  ><br>
	        
	        </div>
	        <!--  <input id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit" value="아이디 찾기" onclick="searchId()">  -->
	           
	        <button type="" id="btn-Yes" class= "btn btn-lg btn-primary btn-block"  onclick="return searchId()">아이디 찾기</button>
	       
	       </form>
	    
	    </form>
	    
	    
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
  
  <script>
      function searchId(){
         var email = document.getElementById("email").value;
         var pwd = document.getElementById("pwd").value;
         if(email == "" || pwd == ""){
            alert("모든 정보를 입력해주세요.");
            return false;
            
         }
         
         
         
        
      } 
     
      
      
      
      
      
      
      
      
   </script>

  
</html>