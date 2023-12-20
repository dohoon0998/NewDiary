<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../CSS/Register.css">
</head>
<body>
<header>
	<%@include file = "HeaderBefore.jsp" %>
	</header>	
	<div class="di">
		<form action="RegisterProcess.jsp">
			<input type="text" placeholder="아이디" class="in" id="In" name="UserID"> 
			<input type= "password" placeholder="비밀번호" class="in" name="Pass"> 
			<input type="password" placeholder="비밀번호 확인" class="in" name="PassChe"> 
			<input type="text" placeholder="별명(가입 후 바꿀 수 있어요)" class="in" id="In2" name="NickName">
			<button type="submit" class="Re">회원가입</button>
		</form>
		<a href="Login.jsp" class="Lo">로그인</a>
	</div>	
	<footer>
	<%@include file = "Footer.jsp" %>
	</footer>
	
	
</body>
</html>