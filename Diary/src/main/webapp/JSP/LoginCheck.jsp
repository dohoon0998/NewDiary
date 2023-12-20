<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
if (session.getAttribute("NickName") == null || session.getAttribute("NickName").equals("")) {
%>
<%@ include file="HeaderBefore.jsp"%>
<%
} else {
%>
<%@ include file="HeaderAfter.jsp"%>
<%
}
%>