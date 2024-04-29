<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String content = "";
%>
<!DOCTYPE html>
<html>
<head>
<style>
.button-container p {
	min-height: 30px;
}

.button-container>div {
	width: 350px;
}
</style>
<jsp:include page="/Common/header.jsp" />	<!-- 헤더 -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSS/company.css">
<meta charset="UTF-8">
<title>회사연혁</title>
</head>

<body>
	<div style="height: 200px;"></div>

	<!-- 회사연혁 -->
	<article>
		<div id="year-text">
			<p style="font-size: 300%" align="center">회 사 연 혁</p>
		</div>
	</article>

	<!--  연혁 버튼 -->
	<article>
		<div class="button-container">
			<div>
				<button type="button" onclick="showText()">2023.4.19</button>
				<p id="output1"></p>
			</div>
			<div>
				<button type="button" onclick="showText1()">2023.5.11</button>
				<p id="output2"></p>
			</div>
		</div>
	</article>
	<div style="height: 20px;"></div>
	<!-- 회사연혁 끝 -->
	<script type="text/javascript" src="/Final/js/year.js"></script>	<!-- 버튼 동작 기능 -->
</body>
<footer>
	<jsp:include page="/Common/rfooter.jsp" />	<!-- 푸터 -->
</footer>
</html>