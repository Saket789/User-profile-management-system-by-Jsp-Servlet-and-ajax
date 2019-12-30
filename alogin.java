package project;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Loginn")
public class alogin extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		String url = "jdbc:mysql://localhost:3306/login";
		String username = "root" ;
		String password = "mysql" ;
		
				
			String sql = "select * from userdata2 where uname=? and pass=?";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection(url,username,password);
				PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1,uname);
				pst.setString(2,pass);
				ResultSet rs = pst.executeQuery();
				if(rs.next())
				{
					HttpSession session = request.getSession();
					session.setAttribute("username", uname);
					System.out.println("pppppppp");
					response.sendRedirect("asignup.jsp");
				}
				else 
				{
					response.sendRedirect("alogin.jsp");
					System.out.println(uname + " iiiiiii "+ pass );
				}
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		
	}

}
