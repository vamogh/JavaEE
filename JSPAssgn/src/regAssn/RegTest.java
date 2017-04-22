package regAssn;
import java.util.*;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;

import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;

public class RegTest {
	public void doPrint(String name, String mail){
		System.out.println("Name: "+ name+ " Mail: "+ mail);
	}
	
	public boolean doRegister(String name, String email, String pass1,String pass2, String dept, String loc,String addr, String dat){
		boolean stat=false;
		 try{
		        Date date=new SimpleDateFormat("yyyy-MM-dd").parse(dat); 
		        System.out.println(pass1+"  "+pass2);
		        
		        if(pass1.equals(pass2)&&pass1.matches("^(?:\\p{Alpha}++\\p{Digit}|\\p{Digit}++\\p{Alpha})\\p{Alnum}*$")){
		        	System.out.println("Cpnnecting Db");
		        	//RequestDispatcher rd=request.getRequestDispatcher("InputRegister");  
		            //rd.forward(request, response);
		            if(InputRegister.inputDB(name,email,pass1,dept,loc,addr,date)){
		            	System.out.print("Successfully Registered");
		            	 stat=true;
		            }
		            else
		            {
		            	
		            	System.out.print("failure");
		            }
		        }
		        else
		        {
		        	System.out.print("Sorry UserName or Password Error!");  
		             
		        }
		        
		        }catch(Exception e){System.out.println(e);}
		 return stat;
			}
		
		
	}


