<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
        function validateForm(form) { // 필수 항목 입력 확인
            if (form.user_name.value == "") {
                alert("이름를 입력하세요.");
                form.user_name.focus();
                return false;
            }
            if (form.user_id.value == "") {
                alert("아이디을 입력하세요.");
                form.user_id.focus();
                return false;
            }
            if (form.password.value == "") {
                alert("비밀번호를 입력하세요.");
                form.password.focus();
                return false;
            }
            if (form.password1.value == "") {
                alert("비밀번호 확인을 입력하세요.");
                form.password1.focus();
                return false;
            }
            if (form.email1.value == "") {
                alert("이메일을 입력하세요.");
                form.email.focus();
                return false;
            }
            if (form.email2.value == "") {
                alert("이메일을 입력하세요.");
                form.email.focus();
                return false;
            }
            if (form.birthdate.value == "") {
                alert("생년월일을 입력하세요.");
                form.birthdate.focus();
                return false;
            }
            
            
     }
    </script>
    
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
    .circles{
    display: inline;
    float: left;
    }
    .circl{ 
        width:100px;
        height:100px;
        border-radius:50%;
        background:#747474;
        font-size:16px;
        text-align:center;  /*가로정렬*/
        line-height:100px;  /*세로 정렬*/ 
        margin-bottom: 10px;
    }
    .circl1{
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


 .circles {
        margin: 20px auto;
        margin-left: 50px;
        margin-right: 50px;
    }

    #tg-lrMZY {
        margin: 0 auto 20px;
        margin-left: 50px;
        margin-right: 50px;
    }

     .fixed-button {
        position: fixed;
        bottom: 20px;
        left: 20px;
        }
    .tg  {border-collapse:collapse;border-spacing:0;margin-top:100px;}
    .tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;
    overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;
    font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
    .tg .tg-lqy6{text-align:right;vertical-align:top}
    .tg .tg-vask{text-align:left;vertical-align:top}
    .tg .tg-jpc1{text-align:left;vertical-align:top}
    .tg .tg-0lax{text-align:left;vertical-align:top}
    .tg-sort-header::-moz-selection{background:0 0}
    .tg-sort-header::selection{background:0 0}.tg-sort-header{cursor:pointer}
    .tg-sort-header:after{content:'';float:right;margin-top:7px;border-width:0 5px 5px;border-style:solid;
    border-color:#404040 transparent;visibility:hidden}
    .tg-sort-header:hover:after{visibility:visible}
    .tg-sort-asc:after,.tg-sort-asc:hover:after,.tg-sort-desc:after{visibility:visible;opacity:.4}
    .tg-sort-desc:after{border-bottom:none;border-width:5px 5px 0}

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

   .cent{
      height: 250px;
   }
   #tg-lrMZY{
      margin-left: 50px;
      margin-top: 30px;
   
   }
   .btn btn-primary{
      
   }
    .row1{
       display: inline;
       float: right;
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
	 form{
		width:75%
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
                        <a class="navbar-brand pl-0" href="../Main.jsp"><img src="https://myawsbuckeu.s3.ap-northeast-2.amazonaws.com/images/logogogo.png"
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
    <div>
    <div class="container py-4 py-lg-5">
        <div class="fables-blog my-3">
            <h2 class="fables-second-text-color mb-4 mb-lg-5 font-weight-bold">Eye:d 회원 정보 입력</h2>
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
      </div>  
        
        <script>
			  function Idcheck() {
	                var id = document.getElementById("id").value;

	               // window.open("open할 window", "자식창 이름", "팝업창 옵션");
	               openWin = window.open("../membercontroller/Idcheck.do?id=" + id, "childForm", "width=570, height=350, resizable = no, scrollbars = no");
	               openWin.document.getElementById("cInput").value = document.getElementById("id").value;
	             }
			  
			  
		</script>
	 	<form method="post" action="../MemberJoinController.do" onsubmit="return validateForm(this);">
	        <table id="tg-lrMZY" class="tg" style="table-layout: fixed; width: 700px">
			  <colgroup id="tg">
			    <col style="width: 111px">
			    <col style="width: 507px">
			  </colgroup>
			  <thead>
			    <tr>
			      <th class="tg-lqy6"><span style="color:#FE0000">*</span>이름</th>
			      <th class="tg-vask"><input name="user_name"></input><span style="color:#FE0000">*</span>한글로 5글자 이내로 입력해주세요</th>
			    </tr>
			  </thead>
			  
			  
			  
			  
			  <tbody>
			    <tr>
			      <td class="tg-lqy6"><span style="color:#FE0000">*</span>아이디</td>
			      <td class="tg-jpc1"><input name="user_id"></input><span style="color:#FE0000">*</span>영문,숫자를 조합하여 6~20 글자 이내로 입력<br>
			        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;<button class="btn btn-secondary" type="button" name="idbtn" id="idbtn" onclick="Idcheck()">중복확인</button>&emsp;&emsp;&emsp;&nbsp;대소문자를 구별하고 한글, 특수문자 사용 불가</td>
			    </tr>
			    <tr>
			      <td class="tg-lqy6"><span style="color:#FE0000">*</span>비밀번호</td>
			      <td class="tg-jpc1"><input name="password" type="password"></input><span style="color:#FE0000">*</span>영문, 숫자를 조합하여 8~20자 이내로 입력</td>
			    </tr>
			    <tr>
			      <td class="tg-lqy6"><span style="color:#FE0000">*</span>비밀번호 확인</td>
			      <td class="tg-jpc1"><input name="password1" type="password"></input></td>
			    </tr>
			    <tr>
			      <td class="tg-lqy6"><span style="color:#FE0000">*</span>이메일</td>
			      <td class="tg-0lax">
			        <table>
			          <tr>
			            <td><input name="email1"></input></td>
			            <td>&nbsp;@</td>
			            <td>
			                <select name="email2">
			                  <option value="@naver.com">naver.com</option>
			                  <option value="@daum.net">hanmail.net</option>
			                  <option value="@google.com" selected>gmail.com</option>
			                  <option value="@nate.com">nate.com</option>
			                </select>
			            </td>
			          </tr>
			        </table>
			      </td> 
			    </tr>
			    <tr>
			      <td class="tg-lqy6"><span style="color:#FE0000">*</span>생년월일</td>
			      <td class="tg-jpc1"><input name="birthdate"></input><span style="color:#FE0000">*</span>예시: 1999-01-03</td>
			    </tr>
		 	  </tbody>
		</table>
		<!-- 취합 시에 경로 변경 필요함 시작 -->
		   	
		      <!-- 취합 시에 경로 변경 필요함 끝-->
		      			<div class="row1">
		      			<button type="reset" style=" margin: 40px; width:105px;background-color: rgb(179, 173, 173);">초기화</button>      
		                <button type="submit" style=" margin: 40px;
		                     background-color: rgb(179, 173, 173); width:105px; text-align:center;">가입완료!</button>
		              	</div>       
		    
	    </form> 
    </div> 
    <div class="cent"></div>
    
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