package com.mohamed.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mohamed.ibe.CreditMethodsCaller;
import com.mohamed.ibe.InsertCreditServiceCaller;
import com.mohamed.model.Client;

/**
 * Servlet implementation class Annuite
 */
@WebServlet("/annuite")
public class Annuite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Annuite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		double capital,taux,annuite;
		int duree;
		capital = Double.parseDouble(request.getParameter("capital"));
		duree =  Integer.parseInt(request.getParameter("duree"));
		taux =  Double.parseDouble(request.getParameter("taux"));
		
		String submitVal = request.getParameter("submit");
		// submit value can be "Calcule" or "Save"
		
		annuite = CreditMethodsCaller.callAnnuite(capital, duree, taux);
		
		HttpSession session = request.getSession();		
		session.setAttribute("resultA", annuite);
		
		int NumCli = 0;
		Client c;
		if("Save".equals(submitVal)) {
			// partie pour retourner le calcule +  sauvgarder le calcule
			c = (Client) session.getAttribute("client");
			NumCli = c.getNumCli();
			int idInserted = InsertCreditServiceCaller.save(annuite, capital, duree, taux, NumCli);
			if(idInserted<0) {
				session.setAttribute("messageInsert", "Problème lors de l'insertion du crédit ...!");
			}else {
				session.setAttribute("messageInsert", "Votre crédit à été bien insérer dans la base de donnée !! avec id>"+idInserted);
			}
		}
		
		response.sendRedirect("annuite.jsp");			
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
