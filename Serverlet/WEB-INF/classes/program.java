import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
	public class program extends HttpServlet
	{
		public void doGet(HttpServletRequest req,HttpServletResponse res)throws 
ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter pw =res.getWriter();
		pw.println("<h1>Programming</h1>");
		pw.close();
	}
	}