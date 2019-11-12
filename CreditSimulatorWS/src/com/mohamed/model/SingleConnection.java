package com.mohamed.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SingleConnection {
	private static Connection connect;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");	
			connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/CreditDB", "root" , "Mohamed123");
		} catch (ClassNotFoundException e) {
			System.err.println("You might have a connection to DB problem....");
			e.printStackTrace();
		} catch (SQLException e) {
			System.err.println("You might have an SQL error in your SQL statement....");
			printSQLException(e);
			e.printStackTrace();
		}
	}
	public static Connection getConnect() {
		return connect;
	}
	
	public static void printSQLException(SQLException ex) {

	    for (Throwable e : ex) {
	        if (e instanceof SQLException) {
	          //  if (ignoreSQLException(
	          //      ((SQLException)e).
	          //      getSQLState()) == false) {

	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " +
	                    ((SQLException)e).getSQLState());

	                System.err.println("Error Code: " +
	                    ((SQLException)e).getErrorCode());

	                System.err.println("Message: " + e.getMessage());

	                Throwable t = ex.getCause();
	                while(t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	          //  }
	        }
	    }
	}
	
}
