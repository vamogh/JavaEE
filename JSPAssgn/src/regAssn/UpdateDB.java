package regAssn;

import java.sql.*;
import java.util.Date;
public class UpdateDB {
		public static boolean updateDB(String name, String email, String dept, String loc, String addr){  
			int ids=0;
			boolean st=false;
			try{  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/assignment1","root","root");  
			Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);  
			ResultSet rs=stmt.executeQuery("select * from register"); 
			while(rs.next())  
			ids =rs.getInt(1); 
			ids++;
			PreparedStatement pstmt=con.prepareStatement("update register set Name=?, department=?, location=?, address=? where email=?");
			pstmt.setString(1, name);
			pstmt.setString(2, dept);
			pstmt.setString(3, loc);
			pstmt.setString(4, addr);
			pstmt.setString(5, email);
			int rst=pstmt.executeUpdate();
			if(rst==1)
				st=true;
			con.close();  
			}catch(Exception e){ System.out.println(e);}  
			return st;
			}

}
