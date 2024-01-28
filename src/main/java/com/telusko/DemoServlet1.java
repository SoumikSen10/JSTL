package com.telusko;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/DemoServlet")
public class DemoServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//String name = "Soumik";
		
		List<Student> studs = Arrays.asList(new Student(1,"Soumik"),new Student(2,"Rahul"),new Student(3,"Pratik"));
		
		//Student s = new Student(1,"Soumik");
		
		request.setAttribute("student", studs);
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	}

}

//JSTL --> JSP Standard Tag Library