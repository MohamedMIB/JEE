package com.mohamed.ibe;

import java.util.ArrayList;
import java.util.List;

import com.mohamed.model.Client;
import com.mohamed.model.Credit;
import com.mohamed.model.ClientFunctions;
import com.mohamed.model.CreditFunctions;

public class CreditSimulatorService {
	/*
	 *   @c ====>  Capital (or prêt )
	 *   @a ====> Annuité de remboursement
	 *   @n ====> Durée en mois d'emprunt
	 *   @t ====> Taux annuel d'intéret
	 */
	public double calculAnnuite(double c , int n, double t) {
		double a ,tm,taux;
		taux = t/100;
		tm = (Math.pow(1+taux, (double)1/12)-1);
		a = (Math.pow(1+tm, n) * tm * c) / (Math.pow(1+tm, n)-1) ;
		//System.out.println(a);
		return a; 
	}
	
	public double calculCapiatl (double a,int n, double t) {
		double c,taux;
		taux = t/100;
		double tm = Math.pow(1 + taux, (double) 1 / 12) - 1;
		c = (a * (Math.pow(1+tm, n)-1)) /  (Math.pow(1+tm, n) * tm );
		return c ; 
	}
	
	//
	public int calculDuree(double c, double a, double t) {
		double taux,tm;
		taux = t/100;
		tm = (Math.pow(1+taux, (double)1/12)-1);
		double n = (Math.log10(a/(a-tm*c)))/(Math.log10(1+tm));
		int duree = (int) Math.ceil(n);
		return duree;
	}
	// ========================= Extra functions ================= //
	public Client getAuth(String NomCli,String PasswordCli) {
		ClientFunctions clientDB = new ClientFunctions();
		Client c = clientDB.getClientByAuth(NomCli, PasswordCli);
		if(c == null) {
			c = new Client();
			c.setNumCli(-1);
		}
		return c;
	}
	//
	public int saveCredit(double AnnCred,double MonCre,int DurCre,double TauCre,int NumCli) {
		CreditFunctions creditDB = new CreditFunctions();
		// insert credit in this part .....
		int NumCred = creditDB.insertCredit(MonCre, DurCre, TauCre, AnnCred, NumCli);
		return NumCred;
	}
	
	// ========== Extra fonctions ++ ====================== //
	
	public Credit[] getCreditsByNumCli(int NumCli){
		CreditFunctions creditDB = new CreditFunctions();
		List<Credit> listCredit;
		// get credit in this part
		listCredit = creditDB.getCreditsByNumCli(NumCli);

		return listCredit.toArray(new Credit[listCredit.size()]);
	}
	
	public int saveClient(String nomCli, String preCli, String adrCli, String vilCli, String telCli, String mailCli,
	String passwordCli) {
		ClientFunctions creditDB = new ClientFunctions();
		// insert the client ....
		int clientInserted = creditDB.insertClient(nomCli, preCli, adrCli, vilCli, telCli, mailCli, passwordCli);
		return clientInserted;
	}
	/* * /
	public static void main(String[] args) {
		double c = 20000.00;
		double t = 5;
		int n = 15;
		CreditSimulatorService test = new CreditSimulatorService();
		double annuite = test.calculAnnuite(c, n, t);
		double capitale = test.calculCapiatl(annuite, n, t);
		int duree = test.calculDuree(capitale, annuite, t);

		System.out.println("Annuite ==> " + annuite);
		System.out.println("Capitale ==> " + capitale);
		System.out.println("Durée en mois ==> " + duree);
		
		Credit[] credits = test.getCreditsByNumCli(1);
		if(credits == null) {
			System.out.println("yo this think is null my dude");
		}
		for(Credit cr : credits) {
			System.out.println("credit from WS: "+cr);
		}

	}
	/**/
}
