package com.mohamed.ibe;
import com.mohamed.ibe.CreditSimulatorServiceStub.GetAuth;
import com.mohamed.ibe.CreditSimulatorServiceStub.GetAuthResponse;
import com.mohamed.model.Client;
public class AuthenticationServiceCaller {

	public static Client auth(String NomCli,String passwordCli) {
		Client returnCli=null;
		try {
			CreditSimulatorServiceStub stub = new CreditSimulatorServiceStub();
			GetAuth authMethode = new GetAuth();
			
			authMethode.setNomCli(NomCli);
			authMethode.setPasswordCli(passwordCli);
			
			GetAuthResponse authResponse = stub.getAuth(authMethode);
			
			int numcli = authResponse.get_return().getNumCli();
			if(numcli>0) {
				returnCli = new Client();
				returnCli.setNumCli(numcli);
				returnCli.setNomCli(authResponse.get_return().getNomCli());
				returnCli.setPreCli(authResponse.get_return().getPreCli());
				returnCli.setAdrCli(authResponse.get_return().getAdrCli());
				returnCli.setVilCli(authResponse.get_return().getVilCli());
				returnCli.setTelCli(authResponse.get_return().getTelCli());
				returnCli.setMailCli(authResponse.get_return().getMailCli());
				returnCli.setPasswordCli(authResponse.get_return().getPasswordCli());
			}
		}
		catch(Exception e) {
			System.err.println("probleme while calling authentication the web service ..."+e.getMessage());
			e.getStackTrace();
		}
		return returnCli;
	}
	/*
	public static void main(String[] args)  {
		System.out.println(AuthenticationServiceCaller.auth("ismail", "ismail123"));
	}*/
}
