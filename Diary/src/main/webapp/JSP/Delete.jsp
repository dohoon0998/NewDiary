<%@page import="utils.JSFunction"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String NickName = (String)session.getAttribute("NickName");
String Title = request.getParameter("Title");

BoardDAO dao = new BoardDAO(application);
int result = dao.DeleteBoard(Title, NickName);

if(result == 1) {
	JSFunction.alertLocation("일기 삭제 완료", "MyDiary.jsp", out);
}else {
	JSFunction.alertBack("일기 삭제 실패", out);
}
%>