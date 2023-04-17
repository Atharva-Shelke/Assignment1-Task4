package com.Calc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="CalcServ1", urlPatterns={"/CalcServ1"})
public class CalcServ1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int x = Integer.parseInt(request.getParameter("num1"));
		int y = Integer.parseInt(request.getParameter("num2"));
		int z=0;
		if(request.getParameter("btnsubmit").equals("+"))
		{
			z= x+y;
		}
		else if(request.getParameter("btnsubmit").equals("-"))
		{
			z=x-y;	
		}
		else if(request.getParameter("btnsubmit").equals("x"))
		{
			z=x*y;	
		}
		else if(request.getParameter("btnsubmit").equals("/"))
		{
			z=x/y;
		}
		else if(request.getParameter("btnsubmit").equals("%"))
		{
			z=x%y;
		}
		
		response.sendRedirect("Calculator.jsp?a="+z);
	}

}