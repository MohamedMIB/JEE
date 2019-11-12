package com.mohamed.controller;

import java.io.IOException;

import com.mohamed.ibe.AuthenticationServiceCaller;
import com.mohamed.model.Client;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Authentication
 */
@WebServlet("/auth")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authentication() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//getServletContext().getRequestDispatcher("/WebContent//index.jsp").forward(request, response);
		String NomCli = request.getParameter("NomCli");
		String passwordCli = request.getParameter("passwordCli");
		Client c = AuthenticationServiceCaller.auth(NomCli, passwordCli);
		HttpSession session = request.getSession(true);
		if(c != null) {
			session.setAttribute("client", c);
			session.setAttribute("authError",false);
			response.sendRedirect("index.jsp");	
		}else {			
			session.setAttribute("authError",true);
			response.sendRedirect("login.jsp");		
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
