import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
	public class sal_calc extends HttpServlet
	{
		public void doGet(HttpServletRequest request,HttpServletResponse res) throws
ServletException,IOException
		{
			res.setContentType("text/html");
				PrintWriter pw=res.getWriter();
			try{
				String name=request.getParameter("name");
				float monthly_sal=Float.parseFloat(request.getParameter("month_sal"));
				float day_present=Float.parseFloat(request.getParameter("present"));
				float day_wage=monthly_sal/31;
				float salary=day_wage*day_present;
				pw.println("<h1>Well Done</h1>");
				pw.println("<h1>Your Salary in this month:"+salary+"</h1>");
			}
			catch(Exception e){
			pw.print(e);
			}
			pw.close();
		}
	}