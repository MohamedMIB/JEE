package com.mohamed.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class Credit implements Serializable {

	int NumCre;
	Timestamp DatCred;
	double MonCre;
	int DurCre;
	double TauCre;
	double AnnCred;
	Timestamp DatPreVer;
	int NumCli;
	
	public Credit() {}

	public Credit(int numCre, double monCre, int durCre, double tauCre, double annCre, int numCli) {
		super();
		NumCre = numCre;
		MonCre = monCre;
		DurCre = durCre;
		TauCre = tauCre;
		AnnCred = annCre;
		NumCli = numCli;
	}
	public Credit(int numCre,Timestamp DatCre, double monCre, int durCre, double tauCre, double annCre,Timestamp DatPreVer, int numCli) {

		NumCre = numCre;
		this.DatCred = DatCre;
		MonCre = monCre;
		DurCre = durCre;
		TauCre = tauCre;
		AnnCred = annCre;
		this.DatPreVer = DatPreVer;
		NumCli = numCli;
	}

	public Timestamp getDatCre() {
		return DatCred;
	}

	public void setDatCre(Timestamp datCre) {
		DatCred = datCre;
	}

	public Timestamp getDatPreVer() {
		return DatPreVer;
	}

	public void setDatPreVer(Timestamp datPreVer) {
		DatPreVer = datPreVer;
	}

	public int getNumCre() {
		return NumCre;
	}

	public void setNumCre(int numCre) {
		NumCre = numCre;
	}

	public double getMonCre() {
		return MonCre;
	}

	public void setMonCre(double monCre) {
		MonCre = monCre;
	}

	public int getDurCre() {
		return DurCre;
	}

	public void setDurCre(int durCre) {
		DurCre = durCre;
	}

	public double getTauCre() {
		return TauCre;
	}

	public void setTauCre(double tauCre) {
		TauCre = tauCre;
	}

	public double getAnnCre() {
		return AnnCred;
	}

	public void setAnnCre(double annCre) {
		AnnCred = annCre;
	}

	public int getNumCli() {
		return NumCli;
	}

	public void setNumCli(int numCli) {
		NumCli = numCli;
	}

	@Override
	public String toString() {
		return "Credit [NumCre=" + NumCre + ", DatCred=" + DatCred + ", MonCre=" + MonCre + ", DurCre=" + DurCre
				+ ", TauCre=" + TauCre + ", AnnCre=" + AnnCred + ", DatPreVer=" + DatPreVer + ", NumCli=" + NumCli + "]";
	}
	
	
}
