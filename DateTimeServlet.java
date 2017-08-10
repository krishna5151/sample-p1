package controller;

import java.io.IOException;
//import java.sql.Date;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/datetimeservlet")
public class DateTimeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String datetime=req.getParameter("datetime");
		String Fromplace=req.getParameter("Fromplace");
		String Toplace=req.getParameter("Toplace");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna", "root", "root");
			PreparedStatement pr=con.prepareStatement("insert into frontpage values(?,?,?)");
			pr.setString(1, datetime);
			pr.setString(2, Fromplace);
			pr.setString(3, Toplace);
			
			int i=pr.executeUpdate();
			if(i!=0){
				System.out.println("Data Inserted success...");
			}else{
				System.out.println("Data Inserted failure");
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		//resp.sendRedirect("header.jsp");
			
			
		
		
		super.doGet(req, resp);
	}
}
