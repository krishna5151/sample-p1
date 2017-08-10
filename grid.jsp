<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.PrintWriter"%>
     <%@ page import="java.sql.Connection"%>
      <%@ page import="java.sql.DriverManager"%>
       <%@ page import="java.sql.ResultSet"%>
       <%@ page import="com.mysql.jdbc.Statement" %>
       <%@ page import="java.io.IOException" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>page grid</title>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">

</head>
<script type="text/javascript">

function updateRecord(exid){
	var a=document.form;
	a.method="post";
	a.action='update.jsp?exid='+exid;
	a.submit();
}
function deleteRecord(exid){
	var a=document.form;
	a.method="post";
	a.action='delete.jsp?exid='+exid;
	a.submit();
}

</script>

<body>
<div class="container text-center">
<div class="jumbotron">
<div class="page-header">
	<h2><i>Grid Page...</i></h2>
</div>
		
<table class="table table-bordered table-striped table-hover">


<br>
<form method="post" name="form">

<tr><th>Exid</th><th>Tcost</th><th>Acost</th><th>Tfare</th><th>Bfast</th><th>Lunch</th><th>Dinner</th><th>Encost</th><th>Other</th><th>Total</th>

<%
//PrintWriter out1=response.getWriter();
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna", "root", "root");
	Statement st =(Statement) con.createStatement();
String sql="select *from expenses";
ResultSet rs=st.executeQuery(sql);

%> 

<% 
while(rs.next()){
%>	
    <tr><td><%=rs.getInt(1)%></td>  
	<td><%=rs.getString(2)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	<td><%=rs.getString(5)%></td>
	<td><%=rs.getString(6)%></td>
	<td><%=rs.getString(7)%></td>
	<td><%=rs.getString(8)%></td>
	<td><%=rs.getString(9)%></td>
	<td><%=rs.getString(10)%></td>
	<td><input type="button" class="btn btn-success" name="update" value="Update"  onclick="updateRecord(<%=rs.getInt(1)%>);" ></td>
	<td><input type="button" class="btn btn-danger" name="delete" value="Delete"  onclick="deleteRecord(<%=rs.getInt(1)%>);" ></td>
	</tr>
<%
}
%>
<%
}
catch(Exception e){
     e.printStackTrace();
}
%>
</form>
</table>
</div>
</div>
</body>
</html>





