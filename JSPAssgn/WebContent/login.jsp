<%@ page import="regAssn.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if(Validate.checkUser(request.getParameter("email"), request.getParameter("pass"))){
		String email=request.getParameter("email");
		session.setAttribute("uname", Validated.getName(email));
		session.setAttribute("email", email);
		response.getWriter().print("Login Successful<br><br> Welcome"+ session.getAttribute("uname"));
		response.sendRedirect("welcome.jsp");		
	}
	else
	{
		response.getWriter().print("Login Unsuccessful!<br>Try Again");
	}

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

</body>
</html>