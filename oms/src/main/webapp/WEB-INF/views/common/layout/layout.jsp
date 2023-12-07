<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title><tiles:insertAttribute name="title" /></title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="${contextPath }/resources/bootstrap/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="${contextPath }/resources/bootstrap/images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.${contextPath }/resources/bootstrap/js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
    <!-- Header Section Begin -->
   	<tiles:insertAttribute name="header" />
    <!-- Header Section End -->
    

    <tiles:insertAttribute name="body" />


    <!-- Footer Section Begin -->
	<tiles:insertAttribute name="footer" />
	<!-- Footer Section End -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
            <a href="https://html.design/">html design</a></p>
    </div>
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

    <!-- ALL JS FILES -->
    <script src="${contextPath }/resources/bootstrap/js/jquery-3.2.1.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/popper.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="${contextPath }/resources/bootstrap/js/jquery.superslides.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/bootstrap-select.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/inewsticker.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/bootsnav.js."></script>
    <script src="${contextPath }/resources/bootstrap/js/images-loded.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/isotope.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/owl.carousel.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/baguetteBox.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/form-validator.min.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/contact-form-script.js"></script>
    <script src="${contextPath }/resources/bootstrap/js/custom.js"></script>
</body>

</html>