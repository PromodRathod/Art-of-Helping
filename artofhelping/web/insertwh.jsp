<%-- 
    Document   : insertwh
    Created on : 5 Oct, 2019, 6:32:04 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserting New WareHouse</title>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">
        <%@page import="java.sql.*,java.util.*"%>
<%
int wid=Integer.parseInt(request.getParameter("wid"));
String wnm=request.getParameter("wnm");
String place=request.getParameter("place");
String icn=request.getParameter("icn");
String pno=request.getParameter("pno");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");

String query = "insert into warehousedet(warehouse_id,warehouse_name,Place,incharge_name,phone_no) values (?,?,?,?,?)";

      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = conn.prepareStatement(query);
      preparedStmt.setInt (1, wid);
      preparedStmt.setString (2, wnm);
      preparedStmt.setString (3, place);
      preparedStmt.setString (4, icn);
      preparedStmt.setString (5, pno);
      // execute the preparedstatement
      preparedStmt.execute(); %>
      
       <jsp:include page="addwh.jsp">
            <jsp:param name="er" value="Successfully Inserted New WareHouse"/>
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
