<%@page import="utils.JSFunction"%>
<%@page import="Board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String Title = (String) session.getAttribute("Title");
    String upTitle = request.getParameter("upTitle");
    String upContent = request.getParameter("upContent");
    upContent = upContent.replaceAll("\r\n", "<br/>");
    String Choice = request.getParameter("Choice");
    String NickName = (String) session.getAttribute("NickName");

    BoardDAO dao = new BoardDAO(application);

    int result = dao.UpdateBoard(Title, NickName, upTitle, Choice, upContent);
 
    if (result == 1) {
        JSFunction.alertLocation("일기 수정 완료", "MyDiary.jsp", out);
    } else {
        JSFunction.alertBack("일기 수정 실패", out);
    }

%> 