<%@ page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- 로그인 확인 -->
<%
	if (session.getAttribute("UserId") == null) {
	JSFunction.alertLocation("로그인 후 이용해주십시오.", "../index.jsp", out);
	return;
}
%>