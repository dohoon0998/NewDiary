<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Integer listSize = (Integer) session.getAttribute("listSize");
if (listSize == null || listSize == 0) {
%>
<%@ include file="Footer.jsp"%>
<%
} else {
%>
<%@ include file="Footer2.jsp"%>
<%
}
%>