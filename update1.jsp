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
<title>update page</title>
</head>
<body>


	

<%
int exid=Integer.parseInt(request.getParameter("exid"));

int tcost=Integer.parseInt(request.getParameter("tcost"));
int acost=Integer.parseInt(request.getParameter("acost"));
int tfare=Integer.parseInt(request.getParameter("tfare"));
int bfast=Integer.parseInt(request.getParameter("bfast"));
int lunch=Integer.parseInt(request.getParameter("lunch"));
int dinner=Integer.parseInt(request.getParameter("dinner"));
int encost=Integer.parseInt(request.getParameter("encost"));
int other=Integer.parseInt(request.getParameter("other"));
int total=Integer.parseInt(request.getParameter("total"));



try{
Connection con = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna","root", "root");
Statement st =(Statement) con.createStatement();
st.executeUpdate("update expenses set tcost='"+ tcost +"',acost='"+ acost+"',tfare='"+ tfare +"',bfast='"+ bfast +"',lunch='"+ lunch +"',dinner='"+ dinner +"',encost='"+ encost +"',other='"+ other +"',total='"+ total +"' where exid='"+ exid +"'");
response.sendRedirect("grid.jsp");
}
catch(Exception e){
System.out.println(e);
}
%>


</body>
</html>