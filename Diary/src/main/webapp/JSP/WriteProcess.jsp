 <%@page import="utils.JSFunction"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String Title = request.getParameter("Title");
String Content = request.getParameter("Content");
Content = Content.replaceAll("\r\n", "<br/>");
String Choice = request.getParameter("Choice");
String NickName = (String) session.getAttribute("NickName");

BoardDAO dao = new BoardDAO(application);

int insert = dao.insertBoard(Title, Content, Choice, NickName);

if (insert == 1) {
	JSFunction.alertLocation("일기 작성 완료", "MyDiary.jsp", out);
} else {
	JSFunction.alertBack("일기 작성 실패", out);
}
%>