<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<%@ include file="/header.jsp" %>
<!-- /End Fables Navigation -->
<!-- 여기를 채워넣어야함 -->
<div class="total">
    <div class="board_wrap">
        <div class="board_title">
            <strong>자유게시판</strong>
            <div id='liSearchOption'>
                <form method="get">
                    <select id='selSearchOption' name="searchField">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                        <%--<option value='C'>닉네임</option>--%>
                    </select>
                    <input id='txtKeyWord' type="text" name="searchWord"/>
                    <input id='searchbtn' type="submit" value="검색하기"/>
                </form>
            </div>
        </div>
        <div class="listsort">
            <a href="#">최신순&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
            <a href="#">좋아요순</a>
        </div>

        <li>
            <ul id="ulTable">
                <c:choose>
                    <c:when test="${empty boardLists }">
                        <tr>
                            <td colspan="6" align="center">
                                등록된 게시물이 없습니다^^*
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <c:forEach items="${boardLists }" var="row" varStatus="loop">
                            <li>
                                <ul>
                                    <li>${ map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}</li>
                                    <li><a href="../mvcboard/view.do?post_num=${ row.post_num }">${ row.title }</a></li>
                                    <li>${ row.user_id }</li>
                                    <li>${ row.view_count }</li>
                                    <li>${ row.createdate }</li>
                                </ul>
                            </li>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </ul>
        </li>

        <div class="write">
            <button type="button" onclick="location.href='../mvcboard/write.do';">글쓰기</button>
        </div>

        <li>
            <div id="divPaging">
                <div>${map.pagingImg }</div>
            </div>
        </li>

    </div>
</div>

<!-- Start Footer 2 Background Image  -->
<%@ include file="/footer.jsp" %>
</body>
</html>