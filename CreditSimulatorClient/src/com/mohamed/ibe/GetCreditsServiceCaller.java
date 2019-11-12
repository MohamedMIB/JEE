package com.mohamed.ibe;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.mohamed.model.Credit;
import com.mohamed.ibe.CreditSimulatorServiceStub.GetCreditsByNumCli;
import com.mohamed.ibe.CreditSimulatorServiceStub.GetCreditsByNumCliResponse;

public class GetCreditsServiceCaller {
	public static List<Credit> getCredits(int NumCli){
		List<Credit> listCredits=new ArrayList<Credit>();
		Credit c = null;
		try {
			// to do get credits from data base ....
			CreditSimulatorServiceStub stub = new CreditSimulatorServiceStub();

			GetCreditsByNumCli getCreditsMethod = new GetCreditsByNumCli();

			getCreditsMethod.setNumCli(NumCli);
			
			System.out.println("here is the call of the WS....");

			GetCreditsByNumCliResponse getCreditsResponse = stub.getCreditsByNumCli(getCreditsMethod);
					
			System.out.println("test4");
			int size = getCreditsResponse.get_return().length;
			System.out.println("the size of response is:"+size);
			for(int i=0;i<size;i++) {
				c = new Credit();
				c.setNumCli(getCreditsResponse.get_return()[i].getNumCli());
				c.setNumCre(getCreditsResponse.get_return()[i].getNumCre());
				c.setDurCre(getCreditsResponse.get_return()[i].getDurCre());
				c.setAnnCre(getCreditsResponse.get_return()[i].getAnnCre());
				c.setMonCre(getCreditsResponse.get_return()[i].getMonCre());
				c.setTauCre(getCreditsResponse.get_return()[i].getTauCre());
				c.setDatCre(new Timestamp(getCreditsResponse.get_return()[i].getDatCre().getTimeInMillis()));
				c.setDatPreVer(new Timestamp(getCreditsResponse.get_return()[i].getDatPreVer().getTimeInMillis()));
				
				listCredits.add(c);
			}
	//		System.out.println(getCreditsResponse.get_return());

		}catch(Exception e) {
			System.err.println("probleme while calling getCreditsByNumCli the web service ..."+e.getMessage());
			e.getStackTrace();
		}
		return listCredits;
	}

/* */
	public static void main(String[] args)  {
		List<Credit> l = (List<Credit>)GetCreditsServiceCaller.getCredits(1);
		//Credit[] l = GetCreditsServiceCaller.getCredits(1);
		for(Credit c:l){
		System.err.println("credit > "+c);
		}
	}
/**/
}
