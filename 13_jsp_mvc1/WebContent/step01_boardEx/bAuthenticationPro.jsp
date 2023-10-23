<%@page import="step01_boardEx.BoardDTO"%>
<%@page import="step01_boardEx.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bAuthenticationPro</title>
</head>
<body>

	<% 
	
		request.setCharacterEncoding("utf-8");
		
		long boardId = Long.parseLong(request.getParameter("boardId"));
		String password = request.getParameter("password");
		
		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setBoardId(boardId);
		boardDTO.setPassword(password);
		
		String menu = request.getParameter("menu");
	
	
		//boolean isAuthorizedUser = BoardDAO.getInstance().checkAuthorizedUser(boardDTO);
		//if (isAuthorizedUser) {
		if (BoardDAO.getInstance().checkAuthorizedUser(boardDTO)) {
			
			if (menu.equals("update")) {
	%>
				<script>
					location.href = "bUpdate.jsp?boardId=" + <%=boardId%>;
				</script>
	<% 
			}
			else if (menu.equals("delete")) {
				response.sendRedirect("bDelete.jsp?boardId=" + boardId);
			}
			
		} 
		else {
	%>
			<script>
				alert("잘못된 패스워드 입니다.");
				history.go(-1); // 한 페이지 화면을 뒤로가기한다.
								// history.back();
			</script>	
	<% 
		}
	%>
	
	

</body>
</html>