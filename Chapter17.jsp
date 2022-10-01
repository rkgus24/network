<table>
			<%
			//한글로 입력받을 때
			request.setCharacterEncoding("UTF-8");
			Connection conn = null;
			Statement stmt = null;
			String custno = "";
			
			try {
				conn = Util.getConnection();	//디비 연결
				stmt = conn.createStatement();	//sql 실행하기 위한 변수
				String sql = "select max(custno)+1 as custno from tbl_member_202205";
				ResultSet rs = stmt.executeQuery(sql);	//stmt를 통해서 sql 실행 결과
				rs.next();	//1개의 결과물 출력, 초기의 커서는 첫행을 가르키지 않는다
				custno = rs.getString("custno");
				
			} catch(Exception e) {
				e.printStackTrace(); 
			}
			%>
		
			<tr>
				<td>회원번호(자동등록)</td>
				<td><input type="text" name="custno" value="<%=custno%>" readonly></td>
			</tr>
			<tr>
