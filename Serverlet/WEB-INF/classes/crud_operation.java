import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.DriverManager.*;
import java.sql.*;
	public class crud_operation extends HttpServlet
	{
		public void doGet(HttpServletRequest request,HttpServletResponse res) throws ServletException,IOException
		{
			res.setContentType("text/html");
			PrintWriter pw=res.getWriter();
			String name= request.getParameter("name");
			String DOB = request.getParameter("DOB");
			String Email = request.getParameter("email");
			String mobile= request.getParameter("mobile");
			String options=request.getParameter("options");
			Connection con= null;

			if(options.equals("INSERT")){
			try{
				Class.forName("org.postgresql.Driver");
				con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
				Statement stmt=con.createStatement();
				stmt.execute("insert into sample_reg values('" + name + "','" + DOB + "','" + Email
				+ "','" + mobile+ "');");
				pw.println("<h1>Successfully registered</h1>");
			  }
			catch(Exception e){
				pw.println("<h1>You already registered this email id</h1>");
			}
			}
			else if(options.equals("READ")){
			try{
				Class.forName("org.postgresql.Driver");
				con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
				Statement stmt=con.createStatement();
				ResultSet r=stmt.executeQuery("select * from sample_reg;"); 
				while(r.next()){ 
				if(Email.equals(r.getString(3))){
					pw.println("<div style=\"border: 5px solid green;width: 60%;margin: auto;\">");
					pw.println("<h3>Name is:"+r.getString(1)+"</h3>");
					pw.println("<br>");	
					pw.println("<h3>DOB:"+r.getString(2)+"</h3>");
					pw.println("<br>");
					pw.println("<h3>Email:"+r.getString(3)+"</h3>");
					pw.println("<br>");
					pw.println("<h3>Mobile:"+r.getString(4)+"</h3>");
					pw.println("<br>");
					pw.println("</div>");
				}
				}
			}
			catch(Exception e){
			pw.println(e);
			}
			}
			else if(options.equals("UPDATE")){
			try{
				Class.forName("org.postgresql.Driver");
				con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
				Statement stmt=con.createStatement();
				stmt.execute("update sample_reg set name='"+name+"',dob='"+DOB+"',mobile_no='"+mobile+"' where email='"+Email+"';");
				pw.println("<h1>Updated Successfully</h1>"); 
					
			}
			catch(Exception e){
			pw.println("<h1>You already updated</h1>");
			}
			}
			else if(options.equals("DELETE")){
			try{
				Class.forName("org.postgresql.Driver");
				con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/practice","postgres","bala");
				Statement stmt=con.createStatement();
				stmt.execute("delete from sample_reg where email='"+Email+"';");
				pw.println("<h1>Delete Successfully</h1>"); 
					
			}
			catch(Exception e){
				pw.println("<h1>No element occured</h1>");
			}
			}
			pw.close();
		}
	}