<%@ page languqge="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>index</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<style>
header {
	position:fixed;
	top:0px;
	width:100%;
	height:40px;
	background-color:blue;
	color:white;
	text-align:center;
	line-height:40px;
	font-size:30px;
}
footer {
	position:fixed;
	bottom:0px;
	width:100%;
	height:30px;
	background-color:blue;
	color:white;
	text-align:center;
	line-height:30px;
	font-size:15px;
}
nav {
	position:fixed;
	top:40px;
	width:100%;
	height:20px;
	background-color:lightblue;
	color:white;
	line-height:20px;
	padding-left:20px;
}
section {
	position:fixed;
	top:60px;
	width:100%;
	height:100%;
	background-color:lightgray;
}
</style>
<header> 쇼핑몰 회원관리 ver 1.0 </header>
<nav>
	<a href="join.jsp">회원등록</a>
	<a href="list.jsp">회원목록조회</a>
	<a href="salary.jsp">회원매출조회</a>
	<a href="index.jsp">홈으로</a>
</nav>
<section>
	<h2><b>쇼핑몰 회원관리 프로그램</b></h2><br>
	<p>
		쇼핑몰 회원정보와 회원매출 정보 데이터베이스를 구축하고 회원관리 프로그램을 작성하는 프로그램이다.<br>
		프로그램 작성 순서<br>
		1. 회원정보 테이블을 작성한다.<br>
		2. 매출정보 테이블을 생성한다.<br>
		3. 회원정보, 매출정보테이블에 제시된 문제지의 참조 데이터를 추가 생성한다.<br>
		4. 회원정보 입력 화면프로그램을 작성한다.<br>
		5. 회원정보 조회 프로그램을 작성한다.<br>
		6. 회원매출정보 조회 프로그램을 작성한다.<br>
	</p>
</section>
<footer>
	HRDKOREA Copyrightⓒ2023 All rights reserved. human Resources Development Service of Korea.
</footer>
</body>
</html>
