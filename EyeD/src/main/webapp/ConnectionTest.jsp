<%--
  Created by IntelliJ IDEA.
  User: choihyesun
  Date: 2023/07/17
  Time: 12:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="common.DBConnPool" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>커넥션 풀 테스트</h2>
<% DBConnPool pool = new DBConnPool();
    pool.close();
%>
</body>
</html>