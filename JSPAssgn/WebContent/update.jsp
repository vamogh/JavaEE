<%@ page import="regAssn.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String name=request.getParameter("name");
    String email=session.getAttribute("email").toString();
    String dept=request.getParameter("dept");
    String loc=request.getParameter("loc");
    String addr=request.getParameter("addr");
    
    	if(UpdateDB.updateDB(name, email, dept, loc, addr)){
    		session.setAttribute("update", "Update Successful");
    		response.sendRedirect("welcome.jsp");
    	}
    	else
    	{
    		response.getWriter().print("Update unsuccessful");
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>