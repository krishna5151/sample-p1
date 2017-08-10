<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.Connection"%>
      <%@ page import="java.sql.DriverManager"%>
       <%@ page import="java.sql.ResultSet"%>
        <%@ page import="com.mysql.jdbc.Statement" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/bootstrap/js/bootstrap.min.js">
<title>Date and Time</title>
</head>
<body>

		<div class="jumbotron">
			<div class="container text-center">
				<div class="page-header">
					<h1>Expenses Page</h1>
				</div>
			</div>

		</div>
		<%
		
		
		String datetime=request.getParameter("datetime");
		String from=request.getParameter("Fromplace");
		String to=request.getParameter("Toplace");
		




try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna", "root", "root");
String sql = "select * from frontpage";
Statement st =(Statement) con.createStatement();
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%> 
<tr>
	<td><input type="text" name="exid" value="<%=rs.getString("datetime")%>"></td>
	<td><input type="text" name="tcost" value="<%=rs.getString("Fromplace")%>"></td>
	<td><input type="text" name="acost" value="<%=rs.getString("Toplace")%>"></td>
</tr>	
<%
}
}
catch(Exception e){
	e.printStackTrace();
}
%>		

</body>
</html>