<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section>
<h2><b>멘토 점수 조회</b></h2>
<table border=1>
	<tr>
		<td>채점번호</td>
		<td>참가번호</td>
		<td>참가자명</td>
		<td>생년월일</td>
		<td>점수</td>
		<td>평점</td>
		<td>멘토명</td>
	</tr>
	<%
	request.setCharacterEncoding("UTF-8");
	try{
		Connection conn = Util.getConnection();
		String sql="SELECT po.serial_no, ar.artist_id, ar.artist_name, ar.birth, po.point, po.point, me.mento_name " +
				   "FROM tbl_artist_201905 ar, tbl_mento_201905 me, tbl_point_2019 po " +
				   "ORDER BY po.serial_no";
		PreparedStatement pstmt = conn.prepareStatement (sql);
		ResultSet re = pstmt.executeQuery();
		while(rs.next()){
			String birth = rs.getString(4);
			String birth = birth.substing(0,4) + "년" +
			 birth.substring(4, 6) + "월" +
			 birth.substring(6, 8) + "일";
			int score=rs.getInt(6);
			String grade;
			if(score>=90) grade="A";
			else if(score>=80) grade="B";
			else if(score>=70) grade="C";
			else if(score>=60) grade="D";
			else grade="F";
	%> 
	    <tr>
	    	<td><%=rs.getString(1) %>></td>
	    	<td><%=rs.getString(2) %>></td>
	    	<td><%=rs.getString(3) %>></td>
	    	<td><%=birth2 %>></td>
	    	<td><%=rs.getString(5) %>></td>
	    	<td><%=grade %></td>
	    	<td><%=rs.getString(7) %>></td>
	    </tr>
	    <%
	    }
	}
	catch(Exception e) {e.printStactTrace();}
	%>
		
</table>
</section>
</body>
</html>
