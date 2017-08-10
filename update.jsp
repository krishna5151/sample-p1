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
<title>Update Page</title>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
 <script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
<div class="container">
<div class="jumbotron">




<div class="page-header">
	<h2><i>Update Page...</i></h2>
</div>
		
 

<br>
<table class="table table-striped table-bordered">
<form  action="./update1.jsp" method="post">


<tr><th>Exid</th><th>Tcost</th><th>Acost</th><th>Tfare</th><th>Bfast</th><th>Lunch</th><th>Dinner</th><th>Encost</th><th>Other</th><th>Total</th>
<%
int exid=Integer.parseInt(request.getParameter("exid"));

try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna", "root", "root");
String sql = "select * from expenses where exid='"+exid+"'";
Statement st =(Statement) con.createStatement();
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%> 
<tr>
	<td><input type="text" name="exid" value="<%=rs.getInt("exid")%>"></td>
	<td><input type="text" name="tcost" value="<%=rs.getInt("tcost")%>"></td>
	<td><input type="text" name="acost" value="<%=rs.getInt("acost")%>"></td>
	<td><input type="text" name="tfare" value="<%=rs.getInt("tfare")%>"></td>
	<td><input type="text" name="bfast" value="<%=rs.getInt("bfast")%>"></td>
	<td><input type="text" name="lunch" value="<%=rs.getInt("lunch")%>"></td>
	<td><input type="text" name="dinner" value="<%=rs.getInt("dinner")%>"></td>
	<td><input type="text" name="encost" value="<%=rs.getInt("encost")%>"></td>
	<td><input type="text" name="other" value="<%=rs.getInt("other")%>"></td>
	<td><input type="text" name="total" value="<%=rs.getInt("total")%>"></td>
</tr>
<tr>
	
	<td><input type="submit" class="btn btn-btn-success" name="Submit" value="Update"></td>
	
</tr>
 
<%
}
}
catch(Exception e){
	e.printStackTrace();
}
%>

</form>
</table>
</div>
</div>
</div>
</body>
</html>