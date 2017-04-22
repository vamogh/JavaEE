package regAssn;

import java.sql.*;
import java.util.Date;
public class InputRegister {
	public static boolean inputDB(String name, String email, String pass, String dept, String loc,String addr, Date date){  
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
		PreparedStatement pstmt=con.prepareStatement("insert into register values (?,?,?,?,?,?,?,?)");
		pstmt.setInt(1,ids);
		pstmt.setString(2,name);
		pstmt.setString(3, email);
		pstmt.setString(4, pass);
		pstmt.setDate(5, new java.sql.Date(date.getTime()));
		pstmt.setString(6, dept);
		pstmt.setString(7, loc);
		pstmt.setString(8, addr);
		int rst=pstmt.executeUpdate();
		if(rst==1)
			st=true;
		con.close();  
		}catch(Exception e){ System.out.println(e);}  
		return st;
		}
	

}
