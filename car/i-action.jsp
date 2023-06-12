<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String car_number = request.getParameter("car_number");
	String location = request.getParameter("location");
	String in_time = request.getParameter("in_time");
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		String sql ="insert into tbl_parking_202301 values(?, ?, ?, ?)";
			
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1,car_number);
		ps.setString(2,location);
		ps.setString(3,in_time);
		ps.setString(4,"");

		ps.executeUpdate();
	} catch(Exception e) {
		e.printStackTrace();
	}
%>
<jsp:forward page="in.jsp"></jsp:forward>
</body>
</html>
