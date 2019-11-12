package com.mohamed.model;

import java.sql.Timestamp;
import java.util.List;

public interface CreditModel {

// to get the list of all credit in data base
public List<Credit> getCredits();

// to get the credit by id
public Credit getCreditByID(int NumCre);

// to get the credit list of a client
public List<Credit> getCreditsByNumCli(int NumCli);

// to insert a credit
//public int insertCredit(double MonCre,int DurCre,double TauCre,double AnnCred,Timestamp DatPreVer,int NumCli);
public int insertCredit(double MonCre,int DurCre,double TauCre,double AnnCred,int NumCli);
public int insertCredit(Credit c);

// to delete credit
public int deleteCredit(int NumCre);

}
