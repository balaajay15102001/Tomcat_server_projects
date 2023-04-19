import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.DriverManager.*;
import java.sql.*;
	public class stu_reg extends HttpServlet
	{
		public void doGet(HttpServletRequest request,HttpServletResponse res) throws
ServletException,IOException
		{
			res.setContentType("text/html");
				PrintWriter pw=res.getWriter();
				pw.println("<h1>Successfully registered</h1>");
			String name= request.getParameter("name");
			String DOB = request.getParameter("DOB");
			String Email = request.getParameter("email");
			String mobile= request.getParameter("mobile");
			pw.println(name+" "+DOB+" "+Email+" "+mobile);
    			Connection con= null;
   			try{
        			Class.forName("org.postgresql.Driver");
        			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
        			Statement stmt=con.createStatement();
        			stmt.execute("insert into sample_reg values('" + name + "','" + DOB + "','" + Email
                			+ "','" + mobile+ "');");  }
    			catch(Exception e){
        			pw.println(e);
    			}
			pw.close();
		}
	}