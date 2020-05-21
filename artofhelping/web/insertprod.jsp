<%-- 
    Document   : insertprod
    Created on : 5 Oct, 2019, 7:33:06 PM
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
String wnm=request.getParameter("inm");
String itp=request.getParameter("itp");
String iqy=request.getParameter("iqy");
String startDateStr = request.getParameter("exdt");
String exdt = request.getParameter("exdt");
DateFormat dformat=new SimpleDateFormat("yyyy-mm-dd");
java.util.Date dobj = dformat.parse(exdt);
long timeInMilli=dobj.getTime();
java.sql.Date dob = new java.sql.Date(timeInMilli);
//Date startDate = sdf. parse(startDateStr);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");

String query = "insert into warehouseprod(warehouse_id,item_name,item_type,expiry_date,item_quantity) values (?,?,?,?,?)";

      // create the mysql insert preparedstatement
      PreparedStatement preparedStmt = conn.prepareStatement(query);
      preparedStmt.setInt (1, wid);
      preparedStmt.setString (2, wnm);
      preparedStmt.setString (3, itp);
      preparedStmt.setDate (4, dob);
      preparedStmt.setString (5, iqy);
      // execute the preparedstatement
      preparedStmt.execute();
%>
      
       <jsp:include page="products.jsp">
            <jsp:param name="er" value="Successfully Added Products in the WareHouse"/>
       </jsp:include>
      
    <% conn.close(); 
       
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%> 
    </body>
</html>
