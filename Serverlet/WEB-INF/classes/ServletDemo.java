import jakarta.servlet.*;
import jakarta.servlet.http.*;
	import java.io.*;
	public class ServletDemo extends HttpServlet
	{
	     public void doGet(HttpServletRequest req, HttpServletResponse res) throws 						 
ServletException, IOException
     	{
     	    res.setContentType("text/html");
     	    PrintWriter pw = res.getWriter();
     	    pw.println("<html><body>");
     	    pw.println("First Program of Servlet");
     	    pw.println("</body></html>");
     	    pw.close();
     	}
}