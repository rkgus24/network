<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import="java.sql.*" %>
   <%@include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String v_jumin = request.getParameter("v_jumin");
String v_name = request.getParameter("v_name");
String m_no = request.getParameter("m_no");
String v_time = request.getParameter("v_time");
String v_area = request.getParameter("v_area");
String v_confirm = request.getParameter("v_confirm");
try{
   String sql="INSERT INTO tbl_vote_202005 VALUES(?, ?, ?, ?, ?, ?)";
   PreparedStatement pstmt=con.prepareStatement(sql);
   pstmt.setString(1, v_jumin);
   pstmt.setString(2, v_name);
   pstmt.setString(3, m_no);
   pstmt.setString(4, v_time);
   pstmt.setString(5, v_area);
   pstmt.setString(6, v_confirm);
   pstmt.executeUpdate();
   %>
   <jsp:forward page="index.jsp"></jsp:forward>
   <%
}
catch(Exception e){
   e.printStackTrace();
}

   %>

</body>
</html>
