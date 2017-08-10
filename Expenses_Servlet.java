package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.fabric.Response;

//@WebServlet("/expenses_servlet")
public class Expenses_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		
		int exid=Integer.parseInt(req.getParameter("exid"));
		int tcost=Integer.parseInt(req.getParameter("tcost"));
		int acost=Integer.parseInt(req.getParameter("acost"));
		int tfare=Integer.parseInt(req.getParameter("tfare"));
		int bfast=Integer.parseInt(req.getParameter("bfast"));
		int lunch=Integer.parseInt(req.getParameter("lunch"));
		int dinner=Integer.parseInt(req.getParameter("dinner"));
		int encost=Integer.parseInt(req.getParameter("encost"));
		int other=Integer.parseInt(req.getParameter("other"));
		int total=Integer.parseInt(req.getParameter("total"));
		
		
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna", "root", "root");
			PreparedStatement pr=con.prepareStatement("insert into expenses values(?,?,?,?,?,?,?,?,?,?)");
			
//			pr.setString(1, "exid");
//			pr.setString(2, "tcost");
//			pr.setString(3, "acost");
//			pr.setString(4, "tfare");
//			pr.setString(5, "bfast");
//			pr.setString(6, "lunch");
//			pr.setString(7, "dinner");
//			pr.setString(8, "encost");
//			pr.setString(9, "other");
			
			
			
			pr.setInt(1, exid);
			pr.setInt(2, tcost);
			pr.setInt(3, acost);
			pr.setInt(4, tfare);
			pr.setInt(5, bfast);
			pr.setInt(6, lunch);
			pr.setInt(7, dinner);
			pr.setInt(8, encost);
			pr.setInt(9, other);
			pr.setInt(10, total);
			
			int i=pr.executeUpdate();
			if(i!=0){
				System.out.println("Data Inserted success...");
			}else{
				System.out.println("Data Inserted failure");
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		resp.sendRedirect("grid.jsp");
	}
	
	
}
