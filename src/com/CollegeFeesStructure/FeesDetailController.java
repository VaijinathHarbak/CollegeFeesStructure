package com.CollegeFeesStructure;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.ObjectWriter;
import com.mysql.jdbc.StringUtils;


public class FeesDetailController {
	public static String getFeesDetails(String castCategory){ //FeesDetail
		List<FeesDetail> feesDetails = null;
		String result = null;
		try{
			Connection con=ConnectionProvider.createConnection();
			String q ;
			if(StringUtils.isEmptyOrWhitespaceOnly(castCategory)){
				q = "select t.year, b.id as branchid,b.branchname,c.id as castid,c.cast,t.tutionfees as tutionfees,t.libraryfees as libraryfees, t.uniformfees as uniformfees, b.contactno from fees t join branch b on b.id = t.branchid join cast c on c.id = t.castid order by b.branchname, t.year;";
			}
			else{
				q = "select t.year, b.id as branchid,b.branchname,c.id as castid,c.cast,t.tutionfees as tutionfees,t.libraryfees as libraryfees, t.uniformfees as uniformfees, b.contactno from fees t join branch b on b.id = t.branchid join cast c on c.id = t.castid where c.cast = '"+castCategory+"' order by b.branchname, t.year;";
			}
			PreparedStatement ps=con.prepareStatement(q);
			ResultSet rs = ps.executeQuery();
			if(rs != null)
				feesDetails = new ArrayList<FeesDetail>();
			while (rs.next()) {
				FeesDetail fs = new FeesDetail();
				fs.Year = rs.getString("year");
				fs.Branch = rs.getString("branchname");
				fs.Cast = rs.getString("cast");
				fs.Tution_Fees = rs.getFloat("tutionfees");
				fs.Library_Fees = rs.getFloat("libraryfees");
				fs.Uniform_Fees = rs.getFloat("uniformfees");
				fs.Contact = rs.getString("contactno");
				feesDetails.add(fs);				
			}
	    }
		catch(Exception e){}
		ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
		try {
			result = ow.writeValueAsString(feesDetails);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
