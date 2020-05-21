<%-- 
    Document   : grpdt
    Created on : 29 Sep, 2019, 12:09:35 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Joining Group</title>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">
        <%@page import="java.sql.*,java.util.*"%>
<%
String nm=request.getParameter("name");
String age=request.getParameter("age");
String state=request.getParameter("state");
String sex=request.getParameter("sex");
String cty=request.getParameter("country");
String phno=request.getParameter("phno");
String add=request.getParameter("add");
String uid=request.getParameter("uid");
String pw=request.getParameter("pwd");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");

String query = "insert into grpmemdetails(userid,password,name,age,state,sex,address,country,phonenumber) values (?,?,?,?,?,?,?,?,?)";

      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = conn.prepareStatement(query);
      preparedStmt.setString (1, uid);
      preparedStmt.setString (2, pw);
      preparedStmt.setString   (3, nm);
      preparedStmt.setString(4, age);
      preparedStmt.setString(5, state);
      preparedStmt.setString(6, sex);
      preparedStmt.setString(7, add);
      preparedStmt.setString(8, cty);
      preparedStmt.setString(9, phno);
      // preparedStmt.setInt    (5, 5000);

      // execute the preparedstatement
      preparedStmt.execute(); %>
      
       <jsp:include page="join.jsp">
            <jsp:param name="er" value="Successfully Joined as a Member"/>
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
