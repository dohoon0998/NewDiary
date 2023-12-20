<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일기쓰기</title>
<link rel="stylesheet" href="../CSS/Write.css">

</head>
<body>
	<header>
		<%@include file="LoginCheck.jsp"%>
	</header>
	<form action="WriteProcess.jsp">
		<select name="Choice">
			<option value="Open">모두 공개</option>
			<option value="Private">비공개</option>
		</select> 
		<div class="Maindiv">
		  <input type="text" placeholder="제목을 입력해주세요." class="Title" required name="Title">
		 <textarea class="Content" required placeholder="내용을 입력해주세요." name="Content"></textarea>
		 </div>
		<button type="submit" class="Commit">저장</button>
	</form>
	<footer>
		<%@include file="Footer.jsp"%>
	</footer>
	
</body>
</html>