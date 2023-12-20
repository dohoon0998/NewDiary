<%@page import="utils.JSFunction"%>
<%@page import="Board.BoardDTO"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String NickName = (String)session.getAttribute("NickName");
String Title = request.getParameter("Title");

BoardDAO dao = new BoardDAO(application);
BoardDTO dto = dao.View(Title);

if(dto.getTitle() != null) {
	session.setAttribute("Title", dto.getTitle());
	session.setAttribute("Content", dto.getContent());
	session.setAttribute("NickName", dto.getNickName());
	session.setAttribute("Date", dto.getPostDate());
	session.setAttribute("Open", dto.getOpen());
	response.sendRedirect("View.jsp");
}else {
	JSFunction.alertBack("상세보기 실패", out);
}
%> 