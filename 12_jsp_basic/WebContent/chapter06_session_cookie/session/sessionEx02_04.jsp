<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 사용예시</title>
</head>
<body>
	
	<h3>장바구니</h3>
	<% 
		//String id = request.getParameter("id");
		// 세션값을 가져오는 방법 > session.getAttribute("세션명");
		// getAttribute();의 반환타입은 Object형이므로 추가적으로 형변환하여 사용한다.
		String id = (String)session.getAttribute("id");
		String role = (String)session.getAttribute("role");		
	%>
	
	<p><%=id %>(<%=role %>)님 로그인 중</p>


</body>
</html>