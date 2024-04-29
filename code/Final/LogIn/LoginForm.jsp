<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<jsp:include page="/Common/header.jsp" />	<!-- 헤더 -->
<link rel="stylesheet" type="text/css" href="/Final/CSS/loginform.css">
<meta name="viewport"
	content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">
<title>로그인폼</title>

<%
	String error = request.getParameter("error");
	if ("true".equals(error)) {
%>
<script>alert("아이디와 패스워드를 다시 확인해주세요.");</script>	<!-- 알림 -->
<%
	}
%>
<%
	if (session.getAttribute("UserId") == null) { // 로그인 상태 확인
	// 로그아웃 상태
%>
<script>
	<!-- 입력칸이 공백일 시 나타나는 알림 -->
	function validateForm(form) {
		if (!form.user_id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}
		if (form.user_pw.value == "") {
			alert("패스워드를 입력하세요.");
			return false;
		}
	}
</script>
</head>
<body>

	<article>
		<div id="login-form">
			<div class="login-box">
				<h2>로그인</h2>
				<!-- 로그인 폼 -->
				<form action="/Final/mvc2/Join.do" method="post" name="loginFrm"
					onsubmit="return validateForm(this);">
					
					<!-- 아이디 입력 -->
					<div class="user-box">
						<input type="text" name="user_id" required="" placeholder="ID">
						<label>아이디</label>
					</div>
					
					<!-- 비밀번호 입력 -->
					<div class="user-box">
						<input type="password" name="user_pw" required=""
							placeholder="Password"> <label>패스워드</label> <input
							type="submit" value="로그인">
					</div>
					<div class="links">
						<a href="<%=request.getContextPath()%>/register.do">회원가입</a> <a
							href="<%=request.getContextPath()%>/findID.do">ID/PW 찾기</a>
					</div>
				</form>
			</div>
			<%
				} else { // 로그인된 상태
			%>
			<%=session.getAttribute("UserName")%>
			회원님, 로그인하셨습니다.<br /> <a
				href="<%=request.getContextPath()%>/Logout.do">[로그아웃]</a>
			<%
				}
			%>
		</div>
	</article>
	<!-- 로그인 폼 끝 -->
</body>
</html>