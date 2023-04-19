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
			String reg_no =request.getParameter("regno");
			String name= request.getParameter("name");
			String DOB = request.getParameter("DOB");
			String Email = request.getParameter("email");
			String address= request.getParameter("address");
			String cgpa = request.getParameter("CGPA");
			pw.println(reg_no+" "+name+" "+DOB+" "+Email+" "+address+" "+cgpa);
    			Connection con= null;
   			try{
        			Class.forName("org.postgresql.Driver");
        			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
        			Statement stmt=con.createStatement();
        			stmt.execute("insert into  student_details values('" + reg_no + "','" + name + "','" + DOB + "','" + Email
                			+ "','" + address + "','" + cgpa + "');");  }
    			catch(Exception e){
        			pw.println(e);
    			}
			pw.close();
		}
	}