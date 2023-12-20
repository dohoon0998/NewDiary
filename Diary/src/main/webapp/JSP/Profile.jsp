<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 페이지</title>
<link rel="stylesheet" href="../CSS/Profile.css">
</head>
<body>
	<header>
		<%@include file="HeaderAfter.jsp"%>
	</header>
		<p class="nic">닉네임</p>
	<div class="ChMain">
		<form action="NickChange.jsp">
			<input type="text" placeholder="<%=Name %>" class="chin" name="UpNick" > <br>
			<button type="submit" class="change">변경하기</button>
		</form>
	</div>
	<footer>
		<%@include file="Footer.jsp"%>
	</footer>
</body>
</html>