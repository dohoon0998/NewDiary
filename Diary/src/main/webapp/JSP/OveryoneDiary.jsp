<%@page import="java.text.SimpleDateFormat"%>
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
<title>모두의 일기장</title>
<link rel="stylesheet" href="../CSS/OveryoneDiary.css">
</head>
<body>
<header>
	<%@include file = "LoginCheck.jsp" %>
	</header>
	<h1 class="gong">공개 일기를 보여드려요</h1>
	
	<div class="jjangdiv">
	<%
	BoardDAO dao = new BoardDAO(application);
	ArrayList<BoardDTO> list = dao.SelectAllBoard("Open");
	for (int i = 0; i < list.size(); i++) {
	%>
	<div class="diary-preview">
<a href="View.jsp?Title=<%=list.get(i).getTitle() %>&NickName=<%= list.get(i).getNickName()%>" class="View2">
    <div class="entry">
    <div class="Sub">
    	<div class="gong"><%=list.get(i).getOpen() %></div>
        <div class="date"><%=list.get(i).getPostDate() %></div>
        </div>
        <div class="sub2">
    	<div class="nick"><%=list.get(i).getNickName() %></div>
    	<div class="jo">조회수: <%=list.get(i).getViewNum() %></div>
    	</div>
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