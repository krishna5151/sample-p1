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
<title>Delete Page</title>
</head>
<body>
<%
int exid = Integer.parseInt(request.getParameter("exid"));
try{
           Class.forName("com.mysql.jdbc.Driver"); 
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna", "root", "root");
		   Statement st=(Statement)con.createStatement();
           int i=st.executeUpdate("delete from expenses where exid="+ exid +"");
           response.sendRedirect("grid.jsp");
}
catch (Exception e){
System.out.println(e);
}
%>
</body>
</html>