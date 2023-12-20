<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
session.invalidate();

JSFunction.alertLocation("로그아웃 되었습니다", "index.jsp", out);
%> 