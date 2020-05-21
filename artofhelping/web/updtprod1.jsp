<%-- 
    Document   : updtprod1
    Created on : 10 Nov, 2019, 11:38:10 AM
    Author     : Promod Rathod
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Products</title>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">
        <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
<%
int wid=Integer.parseInt(request.getParameter("wid"));
int id=Integer.parseInt(request.getParameter("id"));
String nm=request.getParameter("name");
String pn=request.getParameter("phno");
String cty=request.getParameter("cty");
String stt = request.getParameter("stt");
String add = request.getParameter("add");
String amt = request.getParameter("amt");
String itnm = request.getParameter("itnm");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");

String query = "insert into warehouseprod(warehouse_id,item_name,item_type,expiry_date,item_quantity) values (?,?,?,?,?)";

      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = conn.prepareStatement(query);
      preparedStmt.setInt (1, wid);
      preparedStmt.setString (2, itnm);
      preparedStmt.setString (3, null);
      preparedStmt.setDate (4, null);
      preparedStmt.setString (5, null);
      // execute the preparedstatement
      preparedStmt.execute();
      conn.close();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");
String query1 = "insert into donationdet(name,country,state,address,amount,medicines,phone_no) values (?,?,?,?,?,?,?)";

      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt1 = conn1.prepareStatement(query1);
      preparedStmt1.setString (1, nm);
      preparedStmt1.setString (2, cty);
      preparedStmt1.setString (3, stt);
      preparedStmt1.setString (4, add);
      preparedStmt1.setString (5, amt);
      preparedStmt1.setString (6, itnm);
      preparedStmt1.setString (7, pn);
      // execute the preparedstatement
      preparedStmt1.execute();
      conn1.close();

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 

<%
 try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");
Statement st=conn3.createStatement();
 int i=st.executeUpdate("DELETE FROM tempdtdet WHERE id='"+id+"'");
 if (i>0) {
%>
      
       <jsp:include page="manageprod.jsp">
            <jsp:param name="er" value="Successfully Added Products Details"/>
       </jsp:include>
      
    <% conn3.close(); 
       }
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
    </body>
</html>