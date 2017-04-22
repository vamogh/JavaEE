<%@ page import="regAssn.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    	RegTest rg = new RegTest();
    String name= request.getParameter("name");
    String email = request.getParameter("email");
    //System.out.println(email);
    String pass1 = request.getParameter("pass1");
    String dept=request.getParameter("dept");
    String addr=request.getParameter("addr");
    String pass2=request.getParameter("pass2");
    String loc=request.getParameter("loc");
    String dat = request.getParameter("doj");
    if(rg.doRegister(name, email, pass1, pass2, dept, loc, addr, dat)){
    	response.getWriter().write("Successfully Registered");
    	session.setAttribute("success", "successfully registered");
    	response.sendRedirect("index.jsp");
    	
    }
    else
    {
    	response.sendRedirect("reg.jsp");
    }
    //rg.doPrint(name, mail);
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register with JSP</title>
</head>
<body>

</body>
</html>