package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OiMundo extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// super.service(arg0, arg1);
		
		PrintWriter out = response.getWriter();
		
		Calendar calendar = Calendar.getInstance();
		Date data = calendar.getTime();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<tible>Primeira Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Oi mundo Servlet</h1>");
		out.println(String.format("<p> Data: %tF </p>", data));
		out.println("</body>");
		out.println("<html>");
	}
}
