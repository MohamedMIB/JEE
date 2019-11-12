package com.mohamed.model;

import java.io.Serializable;

public class Client implements Serializable{
	int NumCli;
	String NomCli,
		   PreCli,
		   AdrCli,
		   VilCli,
		   TelCli,
		   MailCli,PasswordCli;
	public Client() {}
	public Client(int numCli,String mailCli,String passwordCli) {
		NumCli = numCli;
		MailCli = mailCli;
		PasswordCli = passwordCli;
	}
	public Client(int numCli, String nomCli, String preCli, String adrCli, String vilCli, String telCli, String mailCli,
			String passwordCli) {
		//super();
		NumCli = numCli;
		NomCli = nomCli;
		PreCli = preCli;
		AdrCli = adrCli;
		VilCli = vilCli;
		TelCli = telCli;
		MailCli = mailCli;
		PasswordCli = passwordCli;
	}
	/*
	public Client getClient() {
		return this;
	}*/
	public int getNumCli() {
		return NumCli;
	}
	public void setNumCli(int numCli) {
		NumCli = numCli;
	}
	public String getNomCli() {
		return NomCli;
	}
	public void setNomCli(String nomCli) {
		NomCli = nomCli;
	}
	public String getPreCli() {
		return PreCli;
	}
	public void setPreCli(String preCli) {
		PreCli = preCli;
	}
	public String getAdrCli() {
		return AdrCli;
	}
	public void setAdrCli(String adrCli) {
		AdrCli = adrCli;
	}
	public String getVilCli() {
		return VilCli;
	}
	public void setVilCli(String vilCli) {
		VilCli = vilCli;
	}
	public String getTelCli() {
		return TelCli;
	}
	public void setTelCli(String telCli) {
		TelCli = telCli;
	}
	public String getMailCli() {
		return MailCli;
	}
	public void setMailCli(String mailCli) {
		MailCli = mailCli;
	}
	public String getPasswordCli() {
		return PasswordCli;
	}
	public void setPasswordCli(String passwordCli) {
		PasswordCli = passwordCli;
	}
	@Override
	public String toString() {
		return "Client [NumCli=" + NumCli + ", NomCli=" + NomCli + ", PreCli=" + PreCli + ", AdrCli=" + AdrCli
				+ ", VilCli=" + VilCli + ", TelCli=" + TelCli + ", MailCli=" + MailCli + ", PasswordCli=" + PasswordCli
				+ "]";
	}
	

}
