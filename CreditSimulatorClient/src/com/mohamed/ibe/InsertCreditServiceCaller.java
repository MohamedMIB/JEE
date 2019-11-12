package com.mohamed.ibe;
import com.mohamed.ibe.CreditSimulatorServiceStub.SaveCredit;
import com.mohamed.ibe.CreditSimulatorServiceStub.SaveCreditResponse;
public class InsertCreditServiceCaller {
	// method to call the saveCredit Method of the WS ==> CreditSimulatorService
 public static int save(double AnnCred,double MonCre,int DurCre,double TauCre,int NumCli) {
	 int idInserted=0;
	 try {
		 CreditSimulatorServiceStub stub = new CreditSimulatorServiceStub();
		 SaveCredit saveMethod = new SaveCredit();
		 
		 saveMethod.setAnnCred(AnnCred); saveMethod.setMonCre(MonCre);
		 saveMethod.setDurCre(DurCre); saveMethod.setTauCre(TauCre);
		 saveMethod.setNumCli(NumCli);
		 
		 SaveCreditResponse saveResponse = stub.saveCredit(saveMethod);
		 
		 idInserted = saveResponse.get_return(); 
	 }catch(Exception e) {
		 System.err.println("probleme while calling the saveCredit WS...");
		 e.printStackTrace();
	 }
	 return idInserted;
 }
 /*
	public static void main(String[] args)  {
		System.out.println(InsertCreditServiceCaller.save(100,9000, 12, 20,5));
	}*/
}
