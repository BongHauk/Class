<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    <style type="text/css">

        @media (max-width: 1000px) {
            .board_wrap {
                width: 100%;
                min-width: 320px;
                padding: 0 30px;
                box-sizing: border-box;
            }

            .board_list .num,
            .board_list .writer,
            .board_list .count {
                display: none;
            }

            .board_list .date {
                width: 40%;
            }

            .board_list .title {
                text-indent: 10px;
            }

            .board_list .top .title {
                text-indent: 0;
            }

            .board_page a {
                width: 26px;
                height: 26px;
            }

            .board_page a.bt {
                padding-top: 7px;
            }

            .board_page a.num {
                padding-top: 6px;
            }

            .board_view .info dl {
                width: 50%;
                padding: 0;
            }

            .board_view .info dl:nth-child(-n+2) {
                margin-bottom: 5px;
            }

            .board_view .info dl::before {
                display: none;
            }

            .board_view .info dl dt,
            .board_view .info dl dd {
                font-size: 1.2rem;
            }

            .board_write .info dl {
                width: 49%;
            }

            .board_write .info dl:first-child {
                margin-right: 2%;
            }

            .board_write .title dt,
            .board_write .info dt {
                display: none;
            }

            .board_write .title dd,
            .board_write .info dd {
                width: 100%;
            }

            .board_write .title input[type="text"],
            .board_write .info input[type="text"],
            .board_write .info input[type="password"] {
                width: 100%;
            }
        }

        * {
            margin: 0;
            padding: 0;
        }

        html {
            font-size: 10px;
        }

        ul, li {
            list-style: none;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        .board_wrap {
            width: 1000px;
            margin-left: 150px;
        }


        .board_title {
            margin-bottom: 30px;
        }

        .board_title strong {
            font-size: 3rem;
        }

        .board_title p {
            margin-top: 5px;
            font-size: 1.4rem;
        }

        .bt_wrap {
            margin-top: 150px;
            margin-bottom: 50px;
            text-align: center;
            font-size: 0;
        }

        .bt_wrap a {
            display: inline-block;
            min-width: 80px;
            margin-left: 10px;
            padding: 10px;
            border: 1px solid #000;
            border-radius: 2px;
            font-size: 1.4rem;
        }

        .bt_wrap a:first-child {
            margin-left: 0;
        }

        .bt_wrap a.on {
            background: #000;
            color: #fff;
        }

        .board_list {
            width: 100%;
            border-top: 2px solid #000;
        }

        .board_list > div {
            border-bottom: 1px solid #ddd;
            font-size: 0;
        }

        .board_list > div.top {
            border-bottom: 1px solid #999;
        }

        .board_list > div:last-child {
            border-bottom: 1px solid #000;
        }

        .board_list > div > div {
            display: inline-block;
            padding: 15px 0;
            text-align: center;
            font-size: 1.4rem;
        }

        .board_list > div.top > div {
            font-weight: 600;
        }

        .board_list .num {
            width: 10%;
        }

        .board_list .title {
            width: 60%;
            text-align: left;
        }

        .board_list .top .title {
            text-align: center;
        }

        .board_list .writer {
            width: 10%;
        }

        .board_list .date {
            width: 10%;
        }

        .board_list .count {
            width: 10%;
        }

        .board_page {
            margin-top: 30px;
            text-align: center;
            font-size: 0;
        }

        .board_page a {
            display: inline-block;
            width: 32px;
            height: 32px;
            box-sizing: border-box;
            vertical-align: middle;
            border: 1px solid #ddd;
            border-left: 0;
            line-height: 100%;
        }

        .board_page a.bt {
            padding-top: 10px;
            font-size: 1.2rem;
            letter-spacing: -1px;
        }

        .board_page a.num {
            padding-top: 9px;
            font-size: 1.4rem;
        }

        .board_page a.num.on {
            border-color: #000;
            background: #000;
            color: #fff;
        }

        .board_page a:first-child {
            border-left: 1px solid #ddd;
        }

        .board_view {
            width: 100%;
            border-top: 2px solid #000;
        }

        .board_view .title {
            padding: 20px 15px;
            border-bottom: 1px dashed #ddd;
            font-size: 2rem;
        }

        .board_view .info {
            padding: 15px;
            border-bottom: 1px solid #999;
            font-size: 0;
        }

        .board_view .info dl {
            position: relative;
            display: inline-block;
            padding: 0 20px;
        }

        .board_view .info dl:first-child {
            padding-left: 0;
        }

        .board_view .info dl::before {
            content: "";
            position: absolute;
            top: 1px;
            left: 0;
            display: block;
            width: 1px;
            height: 13px;
            background: #ddd;
        }

        .board_view .info dl:first-child::before {
            display: none;
        }

        .board_view .info dl dt,
        .board_view .info dl dd {
            display: inline-block;
            font-size: 1.4rem;
        }

        .board_view .info dl dt {

        }

        .board_view .info dl dd {
            margin-left: 10px;
            color: #777;
        }

        .board_view .cont {
            padding: 15px;
            border-bottom: 1px solid #000;
            line-height: 160%;
            font-size: 1.4rem;
        }

        .board_write {
            border-top: 2px solid #000;
        }

        .board_write .title,
        .board_write .info {
            padding: 15px;
        }

        .board_write .info {
            border-top: 1px dashed #ddd;
            border-bottom: 1px solid #000;
            font-size: 0;
        }

        .board_write .title dl {
            font-size: 0;
        }

        .board_write .info dl {
            display: inline-block;
            width: 50%;
            vertical-align: middle;
        }

        .board_write .title dt,
        .board_write .title dd,
        .board_write .info dt,
        .board_write .info dd {
            display: inline-block;
            vertical-align: middle;
            font-size: 1.4rem;
        }

        .board_write .title dt,
        .board_write .info dt {
            width: 300px;
        }

        .board_write .title dd {
            width: 1200px;
        }

        .board_write .title input[type="text"],
        .board_write .info input[type="text"],
        .board_write .info input[type="password"] {
            padding: 10px;
            box-sizing: border-box;
        }

        .board_write .title input[type="text"] {
            width: 80%;
        }

        .board_write .cont {
            width: 980px;
            height: 200px;
            border-top: 1px dotted #000;
            border-bottom: 1px solid black;
        }

        .board_write .cont2 {
            width: 980px;
            height: 200px;
            border-bottom: 1px solid #000;
        }

        .board_write .contlast {
            width: 980px;
            height: 200px;
            margin-bottom: 50px;
            border-bottom: 1px solid #000;
        }

        .board_write .cont textarea {
            display: block;
            width: 100%;
            height: 300px;
            padding: 15px;
            box-sizing: border-box;
            border: 0;
            resize: vertical;
        }

        .right-align {
            float: right;
        }

        .list {
            border: 1px solid black;
            padding: 10px;
            width: 85px;
            float: right;
        }

        .like {

            width: 100%;
            padding-top: 130px;

            text-align: center;
        }

        .date {

            width: 100%;
            padding-top: 70px;

            text-align: right;
        }

        .total {
            margin-top: 100px;
        }

        .listbtn {

            padding: 20px;

            float: right;
        }

        button {
            background-color: black;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;

        }

        #liSearchOption {
            clear: both;
            float: right;
        }

        #liSearchOption > div {
            margin: 0 auto;
            margin-top: 30px;
            width: auto;
            height: 100px;

        }

        #selSearchOption {
            height: 30px;
            width: 80px;
        }

        #txtKeyWord {
            height: 30px;
            width: 200px;
        }

        #searchbtn {
            height: 30px;
            width: 50px;
        }

        .left {
            text-align: left;
        }

        .right {
            text-align: right;
        }

        .write {
            float: right;
            padding: 50px;

        }

        ul, li {
            list-style: none;
            text-align: left;
            padding: 0;
            margin: 0;
        }

        #mainWrapper {
            width: 800px;
            margin: 0 auto; /*가운데 정렬*/
        }

        #mainWrapper > ul > li:first-child {
            text-align: center;
            font-size: 14pt;
            height: 40px;
            vertical-align: middle;
            line-height: 30px;

        }

        #ulTable {
            margin-top: 10px;
            border-top: 1px solid rgb(192, 192, 192);
        }

        #ulTable > li > ul {
            clear: both;
            position: relative;
            min-width: 40px;
        }

        #ulTable > li > ul > li {
            float: left;
            font-size: 10pt;
            border-bottom: 1px solid silver;
            vertical-align: baseline;
            padding: 15px;
        }

        #ulTable > li > ul > li:first-child {
            width: 7%;
        }

        /*제목 열 크기*/
        #ulTable > li > ul > li:first-child + li {
            width: 63%;
        }

        /*닉네임 열 크기*/
        #ulTable > li > ul > li:first-child + li + li {
            width: 10%;
        }

        /*좋아요수 열 크기*/
        #ulTable > li > ul > li:first-child + li + li + li {
            width: 10%;
        }

        /*조회수 열 크기*/
        #ulTable > li > ul > li:first-child + li + li + li + li {
            width: 10%;
        }

        /*날짜 열 크기*/


        /*#ulTable > tr > td:first-child {*/
        /*    width: 50%;*/
        /*}*/

        /*!*제목 열 크기*!*/
        /*#ulTable > tr > td:first-child + td {*/
        /*    width: 20%;*/
        /*}*/

        /*!*닉네임 열 크기*!*/
        /*#ulTable > tr > td:first-child + td + td {*/
        /*    width: 10%;*/
        /*}*/

        /*!*좋아요수 열 크기*!*/
        /*#ulTable > tr > td:first-child + td + td + td {*/
        /*    width: 10%;*/
        /*}*/


        /*!*조회수 열 크기*!*/
        /*#ulTable > tr > td:first-child + td + td + td + td {*/
        /*    width: 10%;*/
        /*}*/


        /*날짜 열 크기*/


        /* #ulTable > li > ul > li:first-child               {width:5%;} /*No 열 크기*/
        /* #ulTable > li > ul > li:first-child +li           {width:74%;} /*제목 열 크기*/
        /*#ulTable > li > ul > li:first-child +li+li        {width:10%;} /*조회수 열 크기*/
        /* #ulTable > li > ul > li:first-child +li+li+li     {width:%;} 날짜 열 크기 */


        #divPaging {
            clear: both;
            margin: 0 auto;
            width: 220px;
            height: 50px;
        }

        #divPaging > div {
            float: left;
            width: 30px;
            margin: 0 auto;
            text-align: center;
        }

        #liSearchOption {
            clear: both;
            float: right;
        }

        #liSearchOption > div {
            margin: 0 auto;
            margin-top: 30px;
            width: auto;
            height: 100px;

        }

        .listsort {
            border-top: 2px solid black;
            padding: 10px;
        }

        .listsort a {
            margin-left: 5px;
            font-size: 10pt;

            position: relative;
            top: 8px;
            color: gray;
        }

        .fables-header-icons {
            position: relative;
        }

        .fables-iconuser {

            position: absolute;
            left: 1360px;
            top: 22px;
        }

        .fables-iconsearch-icon {
            position: absolute;
            left: 1400px;
            top: 21px;
        }

        .mainimage {
            text-align: center;
        }

        a {
            text-decoration: none;
        }

    </style>


    <%--    <link rel="stylesheet" href="${pageContext.request.contextPath}../assets/vendor/animate.css-master/animate.min.css">--%>
    <!-- animate.css-->
    <link href="/assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
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
            <a href="#"
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
                    <a class="navbar-brand pl-0" href="Main.jsp"><img src="assets/custom/images/logogogo.png"
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
                                    <li><a class="dropdown-item" href="#">EyeDer</a></li>
                                    <li><a class="dropdown-item" href="#">참고</a></li>
                                </ul>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="sub-nav2" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    Magazine
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="sub-nav2">
                                    <!-- href 수정 필요 -->
                                    <li><a class="dropdown-item" href="../board/HotNews.jsp">핫이슈 골라보기</a></li>
                                    <li><a class="dropdown-item" href="../board/Network.jsp">네트워크</a></li>
                                    <li><a class="dropdown-item" href="../board/Security.jsp">보안</a></li>
                                    <li><a class="dropdown-item" href="../board/OpenSource.jsp">오픈소스</a></li>
                                    <li><a class="dropdown-item" href="../board/DataAnalysis.jsp">데이터 분석</a></li>
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
                                    <li><a class="dropdown-item" href="../board.qna/QnaList.jsp">질문있어요!</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="sub-nav4" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    Service center
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="sub-nav4">
                                    <!-- href 수정 필요 -->
                                    <li><a class="dropdown-item" href="#">공지사항</a></li>
                                    <li><a class="dropdown-item" href="#">FAQ</a></li>
                                    <li><a class="dropdown-item" href="#">ID 및 암호찾기</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
    </div>
</div>