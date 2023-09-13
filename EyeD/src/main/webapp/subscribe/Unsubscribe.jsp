<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	.row1{
       display: inline;
       float: right;
    }
	.fables-header-icons{
		position: relative;
	}
	
	.fables-iconuser{
	
		position: absolute;
		left: 1400px;
		top: 22px;
	}
	
	.fables-iconsearch-icon{
		position: absolute;
		left:1440px;
		top:21px;
	}
	
	.mainimage{
		margin-left: 400px;
	}
	       .navi{
	list-style-type: none;
    width: 210px;
    margin: 0;
    padding: 0;
    background-color: rgb(76, 80, 83);
}

.navi li a{
	text-decoration: none;
    color: #000000;
    font-weight: bold;
    display: block;
    text-align: center;
    padding: 8px;
}

ul{
	list-style-type:none;
	margin: 0;
    padding: 0;
}

/* .navi > li{
	float: left;
} */

.navi > li > a{
	padding: 10px 50px;
}

#H,#U,#P,#S{
	background-color: rgb(114, 123, 131);
    text-decoration: none;
    font-weight: bold;
    color: #ffffff;
    text-align: center;
    padding: 10px;
}

#H>ul>li{
    display: none;
}

#H:hover > ul > li {
    display: block;
}

#U>ul>li{
    display: none;
}

#U:hover > ul > li {
    display: block;
}

#P>ul>li{
    display: none;
}

#P:hover > ul > li {
    display: block;
}

#S>ul>li{
    display: none;
}

#S:hover > ul > li {
    display: block;
}
li a:hover{
	background-color:#33f;
	color: white;
}
h3{
	display: inline;
	float: left;
	margin-left: 525px;
}
row1{
	display:inline;
	float:left;
}
.navi{
	display:inline;
	float:left;
}
.tg  {border-collapse:collapse;border-spacing:0; text-align: center;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg-sort-header::-moz-selection{background:0 0}
.tg-sort-header::selection{background:0 0}.tg-sort-header{cursor:pointer}
.tg-sort-header:after{content:'';float:right;margin-top:7px;border-width:0 5px 5px;border-style:solid;
  border-color:#404040 transparent;visibility:hidden}
.tg-sort-header:hover:after{visibility:visible}
.tg-sort-asc:after,.tg-sort-asc:hover:after,.tg-sort-desc:after{visibility:visible;opacity:.4}
.tg-sort-desc:after{border-bottom:none;border-width:5px 5px 0}
.table-container {
        display: flex;
        justify-content: center;
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
                    <span class="fables-iconsearch-icon"></span>
                </a>
                <!-- 2. Sign In -> 로그인으로 이동시키기 -->
                <a href="../eyedmember/MemberJoin.jsp"
                    class="fables-third-text-color fables-second-hover-color font-13 middle-header-link px-3 px-md-2 px-lg-4 max-middle-line-height">
                    <span class="fables-iconuser"></span>
                </a>
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
    <div class="container py-4 py-lg-5">
        <div class="fables-blog my-3">
            <h2 class="fables-second-text-color mb-4 mb-lg-5 font-weight-bold">구독 정보</h2>
        </div>
    </div>    
   <h3>구독 해지</h3>
   <br>
   <hr width=70%; >
    <div class="container py-4 py-lg-5">
         <ul class="navi">
             <li><a href="#">Home</a></li>
             <li><a href="#"  id="H" style="background-color: rgb(124, 124, 124);">나의 활동</a>
                 <ul>
                     <li><a href="#">내가 쓴 글</a></li>
                     <li><a href="#">내 질문</a></li>
                     <li><a href="#">내 답변</a></li>
                     <li><a href="#">댓글 확인</a></li>
                 </ul>
             </li>
             <li ><a href="#" id="U" style="background-color: rgb(124, 124, 124);">개인 정보 변경</a>
                 <ul>
                     <li><a href="#">개인 정보 변경</a></li>
                     <li><a href="#">비밀번호 변경</a></li>
                 </ul>
             </li>
             <li><a href="#" id="S" style="background-color: rgb(124, 124, 124);">구독 정보</a>
                 <ul>
                     <li><a href="#">구독 해지</a></li>
                 </ul>
             </li>
         </ul> 
    	<div class="table-container">    
			<table id="tg-F116A" class="tg" style="undefined;table-layout: fixed; width: 323px">
				<colgroup>
					<col style="width: 82px">
					<col style="width: 241px">
				</colgroup>
				<thead>
				  <tr>
				    <th class="tg-0pky">이름</th>
				    <th class="tg-0pky"><input></input></th>
				  </tr>
				</thead>
				<tbody>
				  <tr>
				    <td class="tg-0pky">아이디</td>
				    <td class="tg-0pky"><input></input></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">비밀번호</td>
				    <td class="tg-0pky"><input></input></td>
				  </tr>
				</tbody>
			</table>
		</div>
		<form action="http://localhost:9999/EyeD/Main.jsp">
		<div class="row1">       
                <button type="submit" style=" margin: 40px;
                     background-color: rgb(179, 173, 173); width:105px; text-align:center;">해지</button>  
        </div>
        </form>  
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <!-- Start Footer 2 Background Image  -->
    <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3 mt-2 mb-5 text-center">
                    <h2 class="font-30 semi-font mb-5">구독하기?</h2>
                    <form class="form-inline position-relative">
                        <div class="form-group fables-subscribe-formgroup">
                            <input type="email" class="form-control fables-subscribe-input fables-btn-rouned"
                                placeholder="메일을 적으면 최신소식을 발송해 드립니다.">
                        </div>
                        <button type="submit"
                            class="btn fables-second-background-color fables-btn-rouned fables-subscribe-btn">Subscribe</button>
                    </form>
                </div>
            </div> 
        </div>
    </div>
    <div class="copyright fables-main-background-color mt-0 border-0 white-color">
        <p class="mb-0">Copyright Copyright Eye:D All rights reserved.</p>
    </div>

    <!-- /End Footer 2 Background Image -->
    
    <script src="../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
    <script src="../assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
    <script src="../assets/vendor/popper/popper.min.js"></script>
    <script src="../assets/vendor/jQuery.countdown-master/jquery.countdown.min.js"></script>
    <script src="../assets/vendor/timeline/jquery.timelify.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
    <script src="../assets/vendor/owlcarousel/owl.carousel.min.js"></script>
    <script src="../assets/vendor/WOW-master/dist/wow.min.js"></script>
    <script src="../assets/custom/js/jquery-data-to.js"></script>
    <script src="../assets/custom/js/custom.js"></script>
</body>
</html>