<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="Board.BoardDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String NickName = (String)session.getAttribute("NickName");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 일기장</title>
<link rel="stylesheet" href="../CSS/MyDiary.css">
</head>
<body>
<header>
	<%@include file = "LoginCheck.jsp" %>
	</header>
	<div class="gap">
	<p class="tit"><%=NickName %>의 일기장</p>
	</div>
	<a href="Write.jsp" class="write">일기쓰기</a>
	
	
	<div class="jjangdiv">
	<%
		BoardDAO dao = new BoardDAO(application);
		ArrayList<BoardDTO> list = dao.SelectMyBoard(NickName);
		session.setAttribute("listSize", list.size());
	for (int i = 0; i < list.size(); i++) {
	%>
	<div class="diary-preview">
<a href="View.jsp?Title=<%=list.get(i).getTitle() %>&NickName=<%= NickName%>" class="View2">
    <div class="entry">
    <div class="Sub">
    	<div class="gong"><%=list.get(i).getOpen() %></div>
        <div class="date"><%=list.get(i).getPostDate() %></div>
        </div>
        <div class="jo">조회수: <%=list.get(i).getViewNum() %></div>
        <hr>
         <h2 class="H2"><%=list.get(i).getTitle() %></h2>
        <p class="content">
            <%=list.get(i).getContent() %>
        </p>
    </div>
</a>
</div>


<%
}%>
</div>
	 <footer>	
	<%@include file = "Footer2.jsp" %>
	</footer>
	
</body>
</html>