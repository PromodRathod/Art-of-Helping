<%-- 
    Document   : warehouse
    Created on : 29 Sep, 2019, 7:13:01 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Warehouse</title>
        <style>
            .card {
  top: 100px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 600px;
  margin-left:300px;
  background-color: white; opacity: 0.8;
  text-align: left;
  font-family: 'Proxima Nova Soft', 'Helvetica Neue', sans-serif;
}

input[type=text], input[type=password] {
  width: 80%;
  padding: 15px;
  margin: 10px 10px 22px 0px;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.reset {
  padding: 14px 20px;
  background-color: #f44336;
}

.reset, .submit {
  float: left;
  width: 50%;
}

.reset, .submit {
  float: left;
  width: 50%;
}

.container {
  padding: 16px;
}


#mySidenav a {
  position: absolute;
  left: -100px;
  transition: 0.3s;
  padding: 15px;
  width: 100px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
  left: 0;
}


#back {
  top: 20px;
  background-color: lightgreen;
  color: black;
}

#addprod {
  top: 160px;
  background-color: red;
  color: black;
}

#addwh {
  top: 80px;
  background-color: orange;
  color: black;
}

#prod {
  top: 240px;
  background-color: aquamarine;
  color: black;
}
        </style>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">

<div id="mySidenav" class="sidenav">
  <a href="adminhome.jsp" id="back">Back</a>
</div>

<div id="mySidenav" class="sidenav">
  <a href="addwh.jsp" id="addwh">New WareHouse</a>
</div>
        
<div id="mySidenav" class="sidenav">
  <a href="products.jsp" id="addprod">Add Products</a>
</div>
        
<div id="mySidenav" class="sidenav">
  <a href="warehousedt.jsp" id="prod">WareHouse Products</a>
</div>
        <br><br><br><br><br>
        <div class="card">
        <div style="margin:25px">
        <br>
        <h3>WareHouse Details across the Country</h3>
        <table border="2">
            <center>
   <tr>
        <td>WareHouse ID</td>
        <td>WareHouse Name</td>
        <td>Place</td>
        <td>Incharge Name</td>
        <td>Phone No</td>
   </tr>
         <%@ page import="java.sql.*"%>
        <%
            try {  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nc","root","");  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from warehousedet");  
            while(rs.next()) {  %>
                 <tr><td><%=rs.getInt(1)%></td>
                 <td><%=rs.getString("warehouse_name")%></td>
                 <td><%=rs.getString("Place")%></td>
            <td><%=rs.getString("incharge_name")%></td>
                 <td><%=rs.getString("phone_no")%></td></tr>
        <%           
            }
            con.close(); 
        }
        catch(ClassNotFoundException | SQLException e){ 
            System.out.println(e);
        }
        %>
            </center>
        </table><br>
        </div></div>
    </body>
</html>
