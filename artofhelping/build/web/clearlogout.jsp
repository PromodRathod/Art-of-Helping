<%-- 
    Document   : clearlogout
    Created on : 10 Nov, 2019, 1:21:03 PM
    Author     : Promod Rathod
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clearing Warehouse Products Table's unwanted data</title>
    </head>
    <body>
         <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
        <%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");
Statement st=conn3.createStatement();
String in="NA";
 int i=st.executeUpdate("DELETE FROM warehouseprod WHERE item_name='"+in+"'");
%>
      
       <jsp:include page="admin.jsp">
            <jsp:param name="er" value="Logged Out Successfully"/>
       </jsp:include>
      
    <% conn3.close(); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
