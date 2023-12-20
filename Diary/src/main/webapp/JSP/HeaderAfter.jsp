<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/HeaderAfter.css">
<%
	String Name = (String)session.getAttribute("NickName");
	%>
</head>
<body>
	<div class="Div1">
		<div class="Div2">
			<h2>
				<a href="index.jsp" class="HomeA">DY.Project</a>
			</h2>
		</div>
		<div class="Div3">				
			<form action="Logout.jsp">
			<button type="submit" class="nav" id="sub">로그아웃</button>
			</form>  
			<a href="MyDiary.jsp" class="nav">나의 일기장</a> 
			<a href="OveryoneDiary.jsp" class="nav">모두의 일기장</a> 
			<a href="Profile.jsp" class="nav"><%= Name %>의 페이지</a> 
			<a href="Contact.jsp" class="nav" id="nav2">문의/제안</a>
		</div>
	</div>
</body>
</html>