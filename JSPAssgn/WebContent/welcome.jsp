<%@ page import="regAssn.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String email="";
    if(request.isRequestedSessionIdValid()){
    	 email=session.getAttribute("email").toString();
    	   // response.getWriter().print(email);
    	    if(session.getAttribute("update")==null){
    	    	
    	    }
    	    else
    	    {
    	    	response.getWriter().print(session.getAttribute("update").toString());
    	    }
    }
    else
    	response.sendRedirect("index.jsp");
    //String email=session.getAttribute("email").toString();
   // response.getWriter().print(email);
   
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<form method="post" action="update.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Check and Edit</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                        <td>Id</td>
                        <td><input disabled type="text" name="name" value='<%= Validated.getID(email) %>' /></td>
                        
                    </tr> 
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" value='<%= Validated.getName(email) %>' /></td>
                        
                    </tr>                   
                    <tr>
                        <td>Email</td>
                        <td><input disabled type="text" name="email" value='<%= email%>' /></td>
                    </tr>
                    <tr>
                        <td>Date of Joining (YYYY-MM-DD)</td>
                        <td><input disabled type="text" name="doj" value='<%=Validated.getDate(email) %>' min="2000-01-02" /></td>
                    </tr>
                    <tr>
                        <td>Department</td>
                        <td><input type="text" name="dept" value='<%=Validated.getDept(email) %>' maxlength=45/></td>
                    </tr>
                     <tr>
                        <td>Location</td>
                        <td><input type="text" name="loc" value='<%=Validated.getLoc(email) %>' /></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td><input type="text" name="addr" value='<%=Validated.getAddr(email) %>' /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Update" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Done with today <a href="logout.jsp">Logout</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>