<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String Title = request.getParameter("Title");
String NickName = (String) session.getAttribute("NickName");
BoardDAO dao = new BoardDAO(application);
int viewNum = dao.ViewNum(Title, NickName);

BoardDTO dto = dao.View(Title);

String PostName = request.getParameter("NickName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뷰</title>
<link rel="stylesheet" href="../CSS/View.css">
</head>
<body>
	<header>
		<%@include file="LoginCheck.jsp"%>
	</header>
	<div class="jjangdiv">
		<div class="diary-preview">
			<div class="nick"><%=dto.getNickName()%></div>
			<div class="entry">
				<h2 class="H2"><%=Title%></h2>
				<div class="Sub">
					<div class="gong"><%=dto.getOpen()%></div>
					<div class="date"><%=dto.getPostDate()%></div>
				</div>

				<div class="jo">
					조회수:
					<%=dto.getViewNum()%></div>

				<hr>
				<p class="content">
					<%=dto.getContent()%>
				</p>
			</div>
		</div>
	</div>

	<%
	if (NickName.equals(PostName)) {
	%>
	<div class="sub3">
		<a href="Edit.jsp?Title=<%=Title%>" class="su">수정</a>
		<a href="Delete.jsp?Title=<%=Title%>" class="sac">삭제</a>
	</div>
	<%
	}
	%>
	<footer>
		<%@include file="Footer.jsp"%>
	</footer>
</body>
</html>