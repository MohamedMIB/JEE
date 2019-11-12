package com.mohamed.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CreditFunctions implements CreditModel {

	@Override
	public List<Credit> getCredits() {
		List<Credit> credits = new ArrayList<Credit>();
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "select * from Tcredit";
			PreparedStatement ps = connect.prepareStatement(sql);
			ResultSet answer = ps.executeQuery();
			while(answer.next()) {
				Credit c = new Credit();
				c.setNumCre(answer.getInt("NumCre"));
				c.setDatCre(answer.getTimestamp("DatCred"));
				c.setMonCre(answer.getDouble("MonCre"));
				c.setDurCre(answer.getInt("DurCre"));
				c.setTauCre(answer.getDouble("TauCre"));
				c.setAnnCre(answer.getDouble("AnnCred"));
				c.setDatPreVer(answer.getTimestamp("DatPreVer"));
				c.setNumCli(answer.getInt("NumCli"));
				credits.add(c);
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return credits;
	}

	@Override
	public Credit getCreditByID(int NumCre) {
		Credit credit = null;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "select * from Tcredit where NumCre=?";
			PreparedStatement ps = connect.prepareStatement(sql);
			ps.setInt(1, NumCre);
			ResultSet answer = ps.executeQuery();
			while(answer.next()) {
				credit = new Credit();
				credit.setNumCre(answer.getInt("NumCre"));
				credit.setDatCre(answer.getTimestamp("DatCred"));
				credit.setMonCre(answer.getDouble("MonCre"));
				credit.setDurCre(answer.getInt("DurCre"));
				credit.setTauCre(answer.getDouble("TauCre"));
				credit.setAnnCre(answer.getDouble("AnnCred"));
				credit.setDatPreVer(answer.getTimestamp("DatPreVer"));
				credit.setNumCli(answer.getInt("NumCli"));
				break;
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return credit;
	}

	@Override
	public List<Credit> getCreditsByNumCli(int NumCli) {
		List<Credit> credits = new ArrayList<Credit>();
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "select * from Tcredit where NumCli=?";
			PreparedStatement ps = connect.prepareStatement(sql);
			ps.setInt(1, NumCli);
			ResultSet answer = ps.executeQuery();
			while(answer.next()) {
				Credit c = new Credit();
				c.setNumCre(answer.getInt("NumCre"));
				c.setDatCre(answer.getTimestamp("DatCred"));
				c.setMonCre(answer.getDouble("MonCre"));
				c.setDurCre(answer.getInt("DurCre"));
				c.setTauCre(answer.getDouble("TauCre"));
				c.setAnnCre(answer.getDouble("AnnCred"));
				c.setDatPreVer(answer.getTimestamp("DatPreVer"));
				c.setNumCli(answer.getInt("NumCli"));
				credits.add(c);
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return credits;
	}

	@Override
	public int insertCredit(double MonCre, int DurCre, double TauCre, double AnnCred, int NumCli) {
		int idcredit=-1;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "INSERT INTO `Tcredit` "
					+ "(`MonCre`, `DurCre`, `TauCre`, `AnnCred`, `NumCli`) "
					+ "VALUES (?,?,?,?,?)";
			PreparedStatement ps = connect.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setDouble(1, MonCre);ps.setInt(2, DurCre);
			ps.setDouble(3, TauCre);ps.setDouble(4, AnnCred);
			ps.setInt(5, NumCli);
			ps.executeUpdate();
			ResultSet answer = ps.getGeneratedKeys();
			if(answer.next()) {
				idcredit = answer.getInt(1);
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return idcredit;
	}

	@Override
	public int insertCredit(Credit c) {
		return insertCredit(c.getMonCre(),c.getDurCre(),c.getTauCre(),c.getTauCre(), c.getNumCli());
	}

	@Override
	public int deleteCredit(int NumCre) {
		int idDelete=-1;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "DELETE FROM `Tcredit` WHERE NumCre=?";
			PreparedStatement ps = connect.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, NumCre);
			ps.execute();
			idDelete=1;
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return idDelete;
	}
/*.... test of functions in data base ......*/
	/*	
	public static void main(String[] args) {
	double m,t,a;
	int cli,d;
	CreditFunctions test = new CreditFunctions();
	// insertion test .....
	d = 1+(int)(Math.random()*12);
	m = (Math.random()*1000)+100;
	a = (Math.random()*100)+100;
	t = Math.random();
	System.out.println("executing the insert function ...");
	cli = test.insertCredit(m, d, t, a, 1);
	System.out.println("the id inserted in the credit:"+cli);
	// delete test .....
	System.out.println("delete test ....");
	cli = test.deleteCredit(6);
	System.out.println("after delete :"+cli);
	// get Credit functions test
	//List<Credit> credits = test.getCredits();
	List<Credit> credits = test.getCreditsByNumCli(1);
	for(Credit c : credits) {
		System.out.println("credit: "+c);
	}
	System.out.println(test.getCreditByID(2));
	}
*/
}
