<%-- 
    Document   : example
    Created on : 29 Sep, 2019, 1:07:13 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%@page import="java.sql.*,java.util.*"%>

<%
String first_name=request.getParameter("first_name");
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1", "root", "");
Statement statement = conn.createStatement();
String q = "CREATE TABLE '+first_name+'(Id int(5), Name varchar(50));";
statement.executeUpdate(q);
out.println("Table student create sucessfully.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
    </body>
</html>
