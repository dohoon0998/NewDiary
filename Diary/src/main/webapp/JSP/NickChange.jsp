<%@page import="utils.JSFunction"%>
<%@page import="Member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String UpNick = request.getParameter("UpNick");
String BasicNick = (String)session.getAttribute("NickName");

MemberDAO dao = new MemberDAO(application);
String NickName = dao.UpdateNick(UpNick, BasicNick);

if(NickName == null) {
	JSFunction.alertBack("닉네임 변경 실패", out);
}else {
	session.setAttribute("NickName", NickName);
    JSFunction.alertLocation("닉네임 변경 성공", "index.jsp", out);
}
%> 