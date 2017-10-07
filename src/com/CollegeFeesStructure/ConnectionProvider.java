package com.CollegeFeesStructure;
import java.sql.*;

public class ConnectionProvider {
	static Connection conn=null;
	public static Connection createConnection(){
		try{
			Class.forName(Provider.DRIVER);
			conn=DriverManager.getConnection(Provider.CONNECTION_URL,Provider.USERNAME,Provider.PASSWORD);
			if (conn != null) {
			    System.out.println("Database Connected");
			}
			}catch(Exception e){}
		return conn;
	}
}
