<%@page import="Member.MemberDAO"%>
<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String UserID = request.getParameter("UserID");
String Pass = request.getParameter("Pass");
String PassChe = request.getParameter("PassChe");
String NickName = request.getParameter("NickName");

if(Pass.equals(PassChe)) {
	MemberDAO dao = new MemberDAO(application);
	NickName = dao.insertUser(UserID, Pass, NickName);
	if(NickName == null) JSFunction.alertBack("회원가입 실패, 다시 시도해주세요", out);
	else {
		session.setAttribute("NickName", NickName);
	    response.sendRedirect("Login.jsp");
	}
}else {
	JSFunction.alertBack("비밀번호를 다시 입력해주세요", out);
}
%> 