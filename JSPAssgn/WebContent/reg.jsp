<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="name" value="" /></td>
                        
                    </tr>                   
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date of Joining (YYYY-MM-DD)</td>
                        <td><input type="text" name="doj" value="" min="2000-01-02" /></td>
                    </tr>
                    <tr>
                        <td>Department</td>
                        <td><input type="text" name="dept" value="" maxlength=45/></td>
                    </tr>
                     <tr>
                        <td>Location</td>
                        <td><input type="text" name="loc" value="" maxlength=45/></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td><input type="text" name="addr" value="" maxlength=60/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass1" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="pass2" value="" /></td>
                        
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
</body>
</html>