package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InsertData")
public class InsertData extends HttpServlet {
   
    Connection con;
    PreparedStatement ps;
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
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	
    	System.out.println("\n" + con + " Connection Successfull.....");
    	
    	String name = req.getParameter("name");
    	String email = req.getParameter("email");
    	String mobile = req.getParameter("mobile");
    	String password = req.getParameter("passw1");
    	String confirm_password = req.getParameter("passw2");
    	
    	int s_id = 0;
    	
    	try {
    		
			ps = con.prepareStatement("select MAX(s_id) from student");
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				s_id = rs.getInt(1);
				s_id++;
			}
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    	
    	try {
    		
			pst = con.prepareStatement("insert into student values (?,?,?,?,?,?)");
			pst.setString(1, name);
			pst.setString(2, email);
			pst.setString(3, mobile);
			pst.setString(4, password);
			pst.setString(5, confirm_password);
			pst.setInt(6, s_id);
			int rows = pst.executeUpdate();
			System.out.println("\n" + rows + " rows Inserted...");
			resp.sendRedirect("retriveData.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    	
    	
    }

}
