package com.mohamed.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mohamed.ibe.InsertClientServiceCaller;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String NomCli = request.getParameter("NomCli");
		String PreCli = request.getParameter("PreCli");
		String AdrCli = request.getParameter("AdrCli");
		String VilCli = request.getParameter("VilCli");
		String TelCli = request.getParameter("TelCli");
		String MailCli = request.getParameter("MailCli");
		String passwordCli = request.getParameter("passwordCli");
		
		int idInserted = InsertClientServiceCaller.save(NomCli, PreCli, AdrCli, VilCli, TelCli, MailCli, passwordCli);
		HttpSession session = request.getSession(true);
		if(idInserted<0) {
			session.setAttribute("RegisterMessage", "probléme lors de l'insertions d'un client...");
			response.sendRedirect("register.jsp");	
		}
		else {
			session.setAttribute("RegisterMessage","Vote compte a été bien insérer dans notre base de donnée votre login est:<br/><ul><li><b>"+NomCli+"</b></li><li><b>"+passwordCli+"</b></li></ul>");
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
