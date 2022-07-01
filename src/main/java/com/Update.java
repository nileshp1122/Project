package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Update extends HttpServlet {
	
	Connection con;
    PreparedStatement pst;
    
    @Override
    public void init(ServletConfig config) throws ServletException {
    	// TODO Auto-generated method stub
    	
    	ServletContext context = config.getServletContext();
    	
    	try {
    		
			Class.forName(context.getInitParameter("driver"));
			con = DriverManager.getConnection(context.getInitParameter("url"), context.getInitParameter("userName"), context.getInitParameter("password"));
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("\n" + con + " Connection Successfull.....");
		
		String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	String mobile = request.getParameter("mobile");
    	String password = request.getParameter("passw1");
    	String confirm_password = request.getParameter("passw2");
    	int id = Integer.parseInt(request.getParameter("id"));
    	
    	System.out.println(name);
    	System.out.println(email);
    	System.out.println(mobile);
    	System.out.println(password);
    	System.out.println(confirm_password);
    	System.out.println(id);
    	
    	try {
    		
    		pst = con.prepareStatement("update student set s_name = ?, s_email = ?, mobile = ?, password = ?, c_password = ? where s_id = ?");
    		pst.setString(1, name);
    		pst.setString(2, email);
			pst.setString(3, mobile);
			pst.setString(4, password);
			pst.setString(5, confirm_password);
			pst.setInt(6, id);
			int rows = pst.executeUpdate();
			System.out.println("\n" + rows + " row updated...");
			
			response.sendRedirect("retriveData.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
