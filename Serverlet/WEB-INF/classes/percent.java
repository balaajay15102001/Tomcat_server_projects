import jakarta.servlet.http.*;
import java.io.*;
import jakarta.servlet.*;
public class percent extends HttpServlet
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException
	{
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		try{
			String roll= request.getParameter("roll");
			String name = request.getParameter("name");
			String Class = request.getParameter("class");
			float total_subject=Float.parseFloat(request.getParameter("total_subject"));
			float total_marks=Float.parseFloat(request.getParameter("total"));
			pw.println(roll+"   "+name+"   "+Class+"   "+total_marks+"   "+total_subject);
			float percent=total_marks/total_subject;
			pw.println("<h1>Your Percentage is:"+percent+"%</h1>");
		}
		catch(Exception e){
			pw.print(e);
		}
		pw.close();
	}
}