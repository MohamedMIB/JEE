package com.mohamed.ibe;
import com.mohamed.ibe.CreditSimulatorServiceStub.CalculAnnuite;
import com.mohamed.ibe.CreditSimulatorServiceStub.CalculAnnuiteResponse;
import com.mohamed.ibe.CreditSimulatorServiceStub.CalculCapiatl;
import com.mohamed.ibe.CreditSimulatorServiceStub.CalculCapiatlResponse;
import com.mohamed.ibe.CreditSimulatorServiceStub.CalculDuree;
import com.mohamed.ibe.CreditSimulatorServiceStub.CalculDureeResponse;

public class CreditMethodsCaller {
	/*
	 *   @c ====>  Capital (or prêt )
	 *   @a ====> Annuité de remboursement
	 *   @n ====> Durée en mois d'emprunt
	 *   @t ====> Taux annuel d'intéret
	 */
public static double callAnnuite(double c , int n, double t) {
	double a=0;
	 try {
		 CreditSimulatorServiceStub stub = new CreditSimulatorServiceStub();
		 CalculAnnuite annuiteMethod = new CalculAnnuite();
		 
		 annuiteMethod.setC(c); annuiteMethod.setN(n); annuiteMethod.setT(t);
		 
		 CalculAnnuiteResponse annuiteResponse = stub.calculAnnuite(annuiteMethod);
		 
		 a = annuiteResponse.get_return(); 
	 }catch(Exception e) {
		 System.err.println("probleme while calling the calculAnnuite WS...");
		 e.printStackTrace();
	 }
	return a;
}
public static double callCapital(double a,int n, double t) {
	double c=0;
	 try {
		 CreditSimulatorServiceStub stub = new CreditSimulatorServiceStub();
		 CalculCapiatl capitalMethod = new CalculCapiatl();
		 
		 capitalMethod.setA(a); capitalMethod.setN(n); capitalMethod.setT(t);
		 
		 CalculCapiatlResponse capitalResponse = stub.calculCapiatl(capitalMethod);
		 
		 c = capitalResponse.get_return(); 
	 }catch(Exception e) {
		 System.err.println("probleme while calling the calculCapital WS...");
		 e.printStackTrace();
	 }
	return c;
	}
public static int callDuree(double c, double a, double t) {
	int n=0;
	 try {
		 CreditSimulatorServiceStub stub = new CreditSimulatorServiceStub();
		 CalculDuree dureeMethod = new CalculDuree();
		 
		 dureeMethod.setC(c); dureeMethod.setA(a); dureeMethod.setT(t);
		 
		 CalculDureeResponse dureeResponse = stub.calculDuree(dureeMethod);
		 
		 n = dureeResponse.get_return(); 
	 }catch(Exception e) {
		 System.err.println("probleme while calling the calculDuree WS...");
		 e.printStackTrace();
	 }
	return n;
}
/*  //test 
public static void main(String[] args)  {
	double c = 4000,t=20,a;
	int n = 15;
	a = CreditMethodsCaller.callAnnuite(c,n,t);
	System.out.println("Annuité >" +a);
	System.out.println("Capital >" +CreditMethodsCaller.callCapital(a,n,t));
	System.out.println("Durée   >" +CreditMethodsCaller.callDuree(c,a,t));
}*/
}
