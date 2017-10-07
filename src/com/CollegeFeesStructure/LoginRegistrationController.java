package com.CollegeFeesStructure;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginRegistrationController {
	public static Status registerUser(User user){
		
		Status status = new Status(); 
		try{
			if(!isUserExist(user.getUserName())){
				Connection con=ConnectionProvider.createConnection();
	            PreparedStatement ps=con.prepareStatement("insert into [user] (FirstName,LastName,UserName,EmailId,Password,PhoneNo) values(?,?,?,?,?,?)");
				ps.setString(1,user.getfirstName());
				ps.setString(2,user.getlastName());
				ps.setString(3,user.getUserName());
				ps.setString(4,user.getemailId());
				ps.setString(5,user.getpassword());
				ps.setString(6,user.getphNo());
				status.status = ps.executeUpdate();
				status.message = "User registered successfully";
			}
			else{
				status.status = 0;
				status.message = "UserName already exist";
			}
		}catch(Exception e){}
		return status;
		}
	
	public static Status loginUser(User user){
		Status status = new Status();
		try{
			Connection con=ConnectionProvider.createConnection();
			PreparedStatement ps=con.prepareStatement("select * from [user] where UserName = '" + user.getUserName() +"'and Password = '"+user.getpassword()+"';");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
	            status.status = 1;
	            status.message = "Login successfully";
	            return status;
	        }
			status.status = 0;
            status.message = "Login failed";
            return status;
		}
		catch(Exception e){}
		return status;
	}
	
	private static Boolean isUserExist(String userName){
		try{
			Connection con=ConnectionProvider.createConnection();
			PreparedStatement ps=con.prepareStatement("select * from [user] where UserName = '" + userName +"';");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
	            return true;
	        }
		}
		catch(Exception e){}
		return false;
	}
}
