package com.mohamed.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ClientFunctions implements ClientModel {

	@Override
	public List<Client> getClients() {
		List<Client> clients = new ArrayList<Client>();
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "select * from Tclient";
			PreparedStatement ps = connect.prepareStatement(sql);
			ResultSet answer = ps.executeQuery();
			while(answer.next()) {
				Client c = new Client();
				c.setNumCli(answer.getInt("NumCli"));
				c.setNomCli(answer.getString("NomCli"));
				c.setPreCli(answer.getString("PreCli"));
				c.setAdrCli(answer.getString("AdrCli"));
				c.setVilCli(answer.getString("VilCli"));
				c.setTelCli(answer.getString("TelCli"));
				c.setMailCli(answer.getString("MailCli"));
				c.setPasswordCli(answer.getString("PasswordCli"));
				clients.add(c);
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return clients;
	}

	@Override
	public boolean clientExist(int NumCli) {
		boolean exist=false;
		int i=0;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "select * from Tclient where NumCli=?";
			PreparedStatement ps = connect.prepareStatement(sql);
			ps.setInt(1, NumCli);
			ResultSet answer = ps.executeQuery();
			while(answer.next()) {
				i++;
				exist = true;
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return exist;
	}

	@Override
	public Client getClientByID(int NumCli) {
		Client client = null;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "select * from Tclient where NumCli=?";
			PreparedStatement ps = connect.prepareStatement(sql);
			ps.setInt(1, NumCli);
			ResultSet answer = ps.executeQuery();
			while(answer.next()) {
				client = new Client();
				client.setNumCli(answer.getInt("NumCli"));
				client.setNomCli(answer.getString("NomCli"));
				client.setPreCli(answer.getString("PreCli"));
				client.setAdrCli(answer.getString("AdrCli"));
				client.setVilCli(answer.getString("VilCli"));
				client.setTelCli(answer.getString("TelCli"));
				client.setMailCli(answer.getString("MailCli"));
				client.setPasswordCli(answer.getString("PasswordCli"));
				break;
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return client;
	}

	@Override
	public Client getClientByAuth(String NomCli, String PasswordCli) {
		Client client = null;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "select * from Tclient where NomCli like ? and PasswordCli like ?";
			PreparedStatement ps = connect.prepareStatement(sql);
			ps.setString(1, NomCli);ps.setString(2, PasswordCli);
			ResultSet answer = ps.executeQuery();
			while(answer.next()) {
				client = new Client();
				client.setNumCli(answer.getInt("NumCli"));
				client.setNomCli(answer.getString("NomCli"));
				client.setPreCli(answer.getString("PreCli"));
				client.setAdrCli(answer.getString("AdrCli"));
				client.setVilCli(answer.getString("VilCli"));
				client.setTelCli(answer.getString("TelCli"));
				client.setMailCli(answer.getString("MailCli"));
				client.setPasswordCli(answer.getString("PasswordCli"));
				break;
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return client;
	}
	@Override
	public int insertClient(String nomCli, String preCli, String adrCli, String vilCli, String telCli, String mailCli,
			String passwordCli) {
		int idclient=-1;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "INSERT INTO `Tclient` "
					+ "(`NomCli`, `PreCli`, `AdrCli`, `VilCli`, `TelCli`, `MailCli`, `PasswordCli`) "
					+ "VALUES (?,?,?,?,?,?,?)";
			PreparedStatement ps = connect.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, nomCli);ps.setString(2, preCli);
			ps.setString(3, adrCli);ps.setString(4, vilCli);
			ps.setString(5, telCli);ps.setString(6, mailCli);
			ps.setString(7, passwordCli);
			ps.executeUpdate();
			ResultSet answer = ps.getGeneratedKeys();
			if(answer.next()) {
				idclient = answer.getInt(1);
			}
			ps.close();
		}catch (SQLException e) {
			System.err.println("You might have an SQL statement problem ...");
			SingleConnection.printSQLException(e);
			e.printStackTrace();
		}
		return idclient;
	}
	@Override
	public int insertClient(Client c) {
		return insertClient(c.getNomCli(),c.getPreCli(),c.getAdrCli(),c.getVilCli(),c.getTelCli()
				,c.getMailCli(),c.getPasswordCli());
	}
	@Override
	public int deleteClient(int NumCli) {
		int idDelete=-1;
		Connection connect = SingleConnection.getConnect();
		try {
			String sql = "DELETE FROM `Tclient` WHERE NumCli=?";
			PreparedStatement ps = connect.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, NumCli);
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
/*...........local test for data base .........*/
/*	
	public static void main(String[] args) {
		System.out.println("geting clients from data base:");
		ClientFunctions test = new ClientFunctions();
		int id;
		System.out.println("executing the delete query ...");
		id=test.deleteClient(5);
		System.out.println("the delted id  is: "+id);
		List<Client> clients = test.getClients();
		for(Client c : clients) {
			System.out.println("cleint: "+c);
		}
		System.out.println("the client with the id = 1 => "+test.getClientByID(1));
		System.out.println("the client with the id = 7 => "+test.getClientByID(7));

		System.out.println("authentication for the client corect : "+test.getClientByAuth("mziwi", "mustapha123"));
		System.out.println("authentication for the client not corect: "+test.getClientByAuth("test", "test"));
	}
*/


}
