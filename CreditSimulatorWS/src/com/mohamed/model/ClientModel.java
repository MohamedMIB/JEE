package com.mohamed.model;

import java.util.List;

public interface ClientModel {
	
	//to get the list of all clients in the data base
	public List<Client> getClients();
	// To check in the data base if the client exist
	public boolean clientExist(int NumCli);
	// To get client by id
	public Client getClientByID(int NumCli);
	// To authentication with name and password 
	public Client getClientByAuth(String NomCli,String PasswordCli);
	
	// insert client
	public int insertClient(String nomCli, String preCli, String adrCli, String vilCli, String telCli, String mailCli,String passwordCli);
	public int insertClient(Client c);
	
	// delete a client from the data base
	public int deleteClient(int NumCli);
}
