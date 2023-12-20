<%@page import="utils.JSFunction"%>
<%@page import="Member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String UserID = request.getParameter("UserID");
String Pass = request.getParameter("Pass");
String NickName = null;

MemberDAO dao = new MemberDAO(application);
NickName = dao.loginUser(UserID, Pass);

if(NickName == null) {
	JSFunction.alertBack("로그인 실패, 다시 시도해주세요", out);
}else {
	session.setAttribute("NickName", NickName);
    response.sendRedirect("index.jsp");
}
%> 