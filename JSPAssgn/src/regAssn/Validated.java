package regAssn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;
import java.util.Date;
import java.text.DateFormat;
import java.text.*;
public class Validated {
	public static String getName(String email){
		String name="";
		try{
			Connection con=DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/assignment1","root","root");
     PreparedStatement ps =con.prepareStatement
                         ("select * from register where email=?");
     ps.setString(1, email);
     ResultSet rs=ps.executeQuery();
     while(rs.next())
    	 name=rs.getString(2);
		}catch(Exception e){System.out.println(e);}
		return name;
	}
	public static String getDept(String email){
		String dept="";
		try{
			Connection con=DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/assignment1","root","root");
     PreparedStatement ps =con.prepareStatement
                         ("select * from register where email=?");
     ps.setString(1, email);
     ResultSet rs=ps.executeQuery();
     while(rs.next())
    	 dept=rs.getString(6);
		}catch(Exception e){System.out.println(e);}
		return dept;
	}
	public static String getLoc(String email){
		String loc="";
		try{
			Connection con=DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/assignment1","root","root");
     PreparedStatement ps =con.prepareStatement
                         ("select * from register where email=?");
     ps.setString(1, email);
     ResultSet rs=ps.executeQuery();
     while(rs.next())
    	 loc=rs.getString(7);
		}catch(Exception e){System.out.println(e);}
		return loc;
	}
	public static String getAddr(String email){
		String addr="";
		try{
			Connection con=DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/assignment1","root","root");
     PreparedStatement ps =con.prepareStatement
                         ("select * from register where email=?");
     ps.setString(1, email);
     ResultSet rs=ps.executeQuery();
     while(rs.next())
    	 addr=rs.getString(8);
		}catch(Exception e){System.out.println(e);}
		return addr;
		 
	}
	public static String getDate(String email){
		Date date = new Date();
		String text="";
		try{
			Connection con=DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/assignment1","root","root");
     PreparedStatement ps =con.prepareStatement
                         ("select * from register where email=?");
     ps.setString(1, email);
     ResultSet rs=ps.executeQuery();
     while(rs.next())
    	 date=rs.getDate(5);
     DateFormat df = new SimpleDateFormat("dd/MM/yyyy");  
		text = df.format(date); 
		}catch(Exception e){System.out.println(e);}
		return text;
	}
	public static int getID(String email){
		
		int r=0;
		String text="";
		try{
			Connection con=DriverManager.getConnection
                    ("jdbc:mysql://localhost:3306/assignment1","root","root");
     PreparedStatement ps =con.prepareStatement
                         ("select * from register where email=?");
     ps.setString(1, email);
     ResultSet rs=ps.executeQuery();
     while(rs.next())
    	  r=rs.getInt(1);
      
		}catch(Exception e){System.out.println(e);}
		return r;
	}
	

}

