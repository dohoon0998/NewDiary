<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String Title = request.getParameter("Title");
	session.setAttribute("Title", Title);
	String NickName = (String)session.getAttribute("NickName");
	BoardDAO dao = new BoardDAO(application);
	BoardDTO dto = dao.View(Title);
	
	String Content = dto.getContent().replaceAll("<br/>", "\r\n");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
<link rel="stylesheet" href="../CSS/Write.css">
</head> 
<body>
	<header>
		<%@include file="LoginCheck.jsp"%>
	</header>
	<form action="EditProcess.jsp">
		<select name="Choice">
			<option value="Open">모두 공개</option>
			<option value="Private">비공개</option>
		</select> 
		<div class="Maindiv">
		  <input type="text" value="<%=Title %>" class="Title" required name="upTitle">
		 <textarea class="Content"  name="upContent" required><%=Content %></textarea>
		 </div>
		<button type="submit" class="Commit">저장</button>
	</form>
	<footer>
		<%@include file="Footer.jsp"%>
	</footer>
	
</body>
</html>