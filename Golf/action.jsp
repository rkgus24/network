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
   Class.forName("oracle.jdbc.OracleDriver");
   Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
   request.setCharacterEncoding("UTF-8");
   
   String data = request.getParameter("data");
   String number = request.getParameter("number");
   String area = request.getParameter("area");
   int price = Integer.parseInt(request.getParameter("price"));
   int className = Integer.parseInt(request.getParameter("className")) / 1000;
   try{
      String sql = "INSERT INTO tbl_class_202201 VALUES(?, ?, ?, ?, ?)";
      pstmt = con.executeQuery(sql);
      pstmt.setString(1,date);
      pstmt.setString(2,number);
      pstmt.setString(3,area);
      pstmt.setInt(4, price);
      pstmt.setString(5, Integer.toString(className));
      
      pstmt.executeUpdate();
   }catch(Exception e){
      e.printStackTrace();
   }
   <jsp:forward page="index.jsp"></jsp:forward>
%>
</body>
</html>
