package com.CollegeFeesStructure;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.StringUtils;

public class FeesDetailController {
	public static FeesDetail getFeesDetails(String castCategory){
		FeesDetail feesDetails = null;
		try{
			Connection con=ConnectionProvider.createConnection();
			String q ;
			if(StringUtils.isEmptyOrWhitespaceOnly(castCategory)){
				q = "select t.year, b.branchname,c.cast,t.tutionfees as tutionfees,t.libraryfees as libraryfees, t.uniformfees as uniformfees, b.contactno from fees t join branch b on b.id = t.branchid join cast c on c.id = t.castid;";
			}
			else{
				q = "select t.year, b.branchname,c.cast,t.tutionfees as tutionfees,t.libraryfees as libraryfees, t.uniformfees as uniformfees, b.contactno from fees t join branch b on b.id = t.branchid join cast c on c.id = t.castid where c.cast = '"+castCategory+"';";
			}
			PreparedStatement ps=con.prepareStatement(q);
			ResultSet rs = ps.executeQuery();
			if(rs != null)
				feesDetails = new FeesDetail();
			while (rs.next()) {
				int year = rs.getInt("year");
				String branchname = rs.getString("branchname");
				String cast = rs.getString("cast");
				float tutionfees = rs.getFloat("tutionfees");
				float libraryfees = rs.getFloat("libraryfees");
				float uniformfees = rs.getFloat("uniformfees");
				String contactno = rs.getString("contactno");
				
				if(feesDetails.years == null){
					feesDetails.years = new ArrayList<Year>();
					Year yearObj = new Year();
					yearObj.yearNo = year;
					
					yearObj.branches = new ArrayList<Branch>();
					Branch branchObj = new Branch();
					branchObj.branchName = branchname;
					branchObj.contactNo = contactno;
					branchObj.casts = new ArrayList<Cast>();
					
					Cast castObj = new Cast();
					castObj.cast = cast;
					castObj.tutionFees = tutionfees;
					castObj.libraryFees = libraryfees;
					castObj.uniformFees = uniformfees;
					branchObj.casts.add(castObj);
						
					yearObj.branches.add(branchObj);
					
					feesDetails.years.add(yearObj);
				}
				else{
					//feesDetails.years.forEach();
				}
			}
	    }
		catch(Exception e){}
		return feesDetails;
	}
}
