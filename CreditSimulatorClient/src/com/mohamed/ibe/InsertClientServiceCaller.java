package com.mohamed.ibe;

import com.mohamed.ibe.CreditSimulatorServiceStub.SaveClient;
import com.mohamed.ibe.CreditSimulatorServiceStub.SaveClientResponse;


public class InsertClientServiceCaller {
	public static int save(String nomCli, String preCli, String adrCli, String vilCli, String telCli, String mailCli,
			String passwordCli) {
		 int idInserted=0;
		 try {
			 CreditSimulatorServiceStub stub = new CreditSimulatorServiceStub();
			 SaveClient saveMethod = new SaveClient();
			 
			 saveMethod.setNomCli(nomCli); saveMethod.setPreCli(preCli);
			 saveMethod.setAdrCli(adrCli); saveMethod.setVilCli(vilCli);
			 saveMethod.setTelCli(telCli); saveMethod.setMailCli(mailCli);
			 saveMethod.setPasswordCli(passwordCli);
			 
			 SaveClientResponse saveResponse = stub.saveClient(saveMethod);
			 
			 idInserted = saveResponse.get_return(); 
		 }catch(Exception e) {
			 System.err.println("probleme while calling the saveClient WS...");
			 e.printStackTrace();
		 }
		 return idInserted;
	}
	 /* */
		public static void main(String[] args)  {
			int id = InsertClientServiceCaller.save("demo", "demo", "demo addresse","demo ville", "demo Tel", "demo@mail.com", "demo");
			System.out.println("id inserted (using WS)>"+id);
		}/**/
}
