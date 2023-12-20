<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="../CSS/Login.css">
</head>
<body>
	<header>
	<%@include file = "HeaderBefore.jsp" %>
	</header>	
	<div class="di">
		<form action="LoginProcess.jsp">
			<input type="text" placeholder="아이디" class="in" id="In" name="UserID"> 
			<input type= "password" placeholder="비밀번호" class="in" id="In2" name="Pass"> 
			<button type="submit" class="Re">로그인</button>
		</form>
		<a href="Register.jsp" class="Lo">회원가입</a>
	</div>	
	<footer>
	<%@include file = "Footer.jsp" %>
	</footer>
</body>
</html>