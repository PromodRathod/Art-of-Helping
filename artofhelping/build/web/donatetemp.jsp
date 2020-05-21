<%-- 
    Document   : donatetemp
    Created on : 6 Oct, 2019, 11:52:32 AM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temp Donate Details</title>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">
        <%@page import="java.sql.*"%>
<%
String nm=request.getParameter("name");
String phno=request.getParameter("phno");
String state=request.getParameter("state");
String country = request. getParameter("country");
String add = request.getParameter("add");
String amt=request.getParameter("amt");
String mds=request.getParameter("mds");
String clt=request.getParameter("clt");
String iqy=request.getParameter("iqy");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");

String query = "insert into tempdtdet(name,state,country,address,phone_no,amount,med_name,item_qty) values (?,?,?,?,?,?,?,?)";

      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = conn.prepareStatement(query);
      preparedStmt.setString (1, nm);
      preparedStmt.setString (2, state);
      preparedStmt.setString (3, country);
      preparedStmt.setString (4, add);
      preparedStmt.setString (5, phno);
      preparedStmt.setString (6, amt);
      preparedStmt.setString (7, mds);
      preparedStmt.setString (8, iqy);
      // execute the preparedstatement
      preparedStmt.execute(); %>
      
       <jsp:include page="donate.jsp">
            <jsp:param name="er" value="Successfully Donated"/>
       </jsp:include>
      
    <%  conn.close(); 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
