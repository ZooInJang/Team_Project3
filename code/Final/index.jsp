<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="room.*"%>
<%@ page import="java.util.*"%>

<%
// index.jsp에서 읽어온 방번호

String drv = application.getInitParameter("OracleDriver");
String url = application.getInitParameter("OracleURL");
String id = application.getInitParameter("OracleId");
String pw = application.getInitParameter("OraclePwd");

RoomDAO dao = new RoomDAO(drv, url, id, pw);
ArrayList<RoomDTO> roomList101 = dao.getList(101);
ArrayList<RoomDTO> roomList102 = dao.getList(102);
ArrayList<RoomDTO> roomList103 = dao.getList(103);
%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/Common/header.jsp" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSS/main.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<meta charset="UTF-8">
<title>메인</title>
</head>
<body>
	<div style="height: 100px;"></div>
	<!-- 메인 메뉴 박스 슬라이더로 5초마다 이미지 변경 -->
	<article>
		
		<div>
			<ul class="bxslider">
				<li><a href="#"><img src="/Final/Image/1.jpg" alt=""
						width=100% height="5%"></a></li>
				<li><a href="#"><img src="/Final/Image/2.jpg" alt=""
						width=100% height="5%"></a></li>
				<li><a href="#"><img src="/Final/Image/3.jpg" alt=""
						width=100% height="5%"></a></li>
			</ul>
		</div>
	</article>
	<article>
		<div class="container">
			<!-- 101호 이미지와 room테이블에서 불러온 데이터 출력 -->
			<div class="image-container" onclick="location.href='<%=request.getContextPath() %>/mvc2/review.do?room=101'">
				<img src="/Final/Image/101.jpg" width="500px" height="400px">
				<div class="edit-container" onclick="location.href='<%=request.getContextPath() %>/mvc2/review.do?room=101'">
					<% for (RoomDTO room : roomList101) { %>
					    <p id="text-101">회의실 방번호 <%= room.getNum() %>호</p>
					    <p id="text-101">회의실 평수 : <%= room.getArea() %>대</p>
					    <p id="text-101">수용가능인원 : <%= room.getCapacity() %>명</p>
					    <p id="text-101">에어컨 갯수: <%= room.getAirConditioner() %>개</p>
					    <p id="text-101">컴퓨터 갯수: <%= room.getComputer() %>개</p>
					    <p id="text-101">화이트보드 갯수: <%= room.getWhiteboard() %>개</p>
					    <p id="text-101">wi-fi 유뮤 : <%= room.getWifi() %></p>
					    <p id="text-101">시간당 가격 : <%= room.getPrice()%>원</p>
					<% } %>
				</div>
           	</div>
           	
           	<!-- 102호 이미지와 room테이블에서 불러온 데이터 출력 -->
			<div class="image-container" onclick="location.href='<%=request.getContextPath() %>/mvc2/review.do?room=102'">
				<img src="/Final/Image/102.jpg" width="500px" height="400px">
				<div class="edit-container" onclick="location.href='<%=request.getContextPath() %>/mvc2/review.do?room=102'">
					<% for (RoomDTO room : roomList102) { %>
					    <p id="text-102">회의실 방번호 <%= room.getNum() %>호</p>
					    <p id="text-102">회의실 평수 : <%= room.getArea() %>대</p>
					    <p id="text-102">수용가능인원 : <%= room.getCapacity() %>명</p>
					    <p id="text-102">에어컨 갯수: <%= room.getAirConditioner() %>개</p>
					    <p id="text-102">컴퓨터 갯수: <%= room.getComputer() %>개</p>
					    <p id="text-102">화이트보드 갯수: <%= room.getWhiteboard() %>개</p>
					    <p id="text-102">wi-fi 유뮤 : <%= room.getWifi() %></p>
					    <p id="text-102">시간당 가격 : <%= room.getPrice()%>원</p>
					<% } %>
				</div>
			</div>
			
			<!-- 103호 이미지와 room테이블에서 불러온 데이터 출력 -->
			<div class="image-container" onclick="location.href='<%=request.getContextPath() %>/mvc2/review.do?room=103'">
				<img src="/Final/Image/103.jpg" width="500px" height="400px">
				<div class="edit-container" onclick="location.href='<%=request.getContextPath() %>/mvc2/review.do?room=103'">
					<% for (RoomDTO room : roomList103) { %>
					    <p id="text-103">회의실 방번호 <%= room.getNum() %>호</p>
					    <p id="text-103">회의실 평수 : <%= room.getArea() %>대</p>
					    <p id="text-103">수용가능인원 : <%= room.getCapacity() %>명</p>
					    <p id="text-103">에어컨 갯수: <%= room.getAirConditioner() %>개</p>
					    <p id="text-103">컴퓨터 갯수: <%= room.getComputer() %>개</p>
					    <p id="text-103">화이트보드 갯수: <%= room.getWhiteboard() %>개</p>
					    <p id="text-103">wi-fi 유뮤 : <%= room.getWifi() %></p>
					    <p id="text-103">시간당 가격 : <%= room.getPrice()%>원</p>
					<% } %>
				</div>
           	</div>
		</div>
	</article>

	<div style="height: 30px;"></div>
	<%
		dao.close();
	%>
	<script src="/Final/js/main.js"></script>
</body>
<footer>
	<jsp:include page="/Common/afooter.jsp" />
</footer>
</html>