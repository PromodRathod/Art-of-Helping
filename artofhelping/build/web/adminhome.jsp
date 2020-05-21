<%-- 
    Document   : adminhome
    Created on : 23 Sep, 2019, 6:52:22 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <style>
            	#mySidenav a {
  position: absolute;
  left: -90px;
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


 .card {
  top: 100px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 600px;
  margin-left:300px;
  background-color: white; opacity: 0.8;
  text-align: left;
  font-family: 'Proxima Nova Soft', 'Helvetica Neue', sans-serif;
}

.container {
  padding: 16px;
}


#logout {
  top: 20px;
  background-color: lightgreen;
  color: black;
}

#ware {
  top: 80px;
  background-color: navy;
  color: black;
}

#goods {
  top: 140px;
  background-color: red;
  color: black;
}

#pymnt {
  top: 220px;
  background-color: orange;
  color: black;
}

        </style>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">
        <div id="mySidenav" class="sidenav">
        <a href="clearlogout.jsp" id="logout">Log Out</a>
        </div>
        
        <div id="mySidenav" class="sidenav">
        <a href="warehouse.jsp" id="ware">Warehouses</a>
        </div>
        
        <div id="mySidenav" class="sidenav">
        <a href="goods.jsp" id="goods">Manage Goods</a>
        </div>
        
        <div id="mySidenav" class="sidenav">
        <a href="paymentmanagement.jsp" id="pymnt">Donation Details</a>
        </div>
        
        <br><br><br>
        <div class="card">
        <div style="margin:25px">
        <br>
        <h3>Products in Warehouse across the Country</h3>
        <table border="2">
            <center>
   <tr>
        <td>WareHouse ID</td>
        <td>Item Name</td>
        <td>Item Type</td>
        <td>Expiry Date</td>
        <td>Item Quantity</td>
   </tr>
         <%@ page import="java.sql.*"%>
        <%
            try {  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nc","root","");  
            Statement stmt1=conn.createStatement();  
            ResultSet rs1=stmt1.executeQuery("select * from warehouseprod");  
            while(rs1.next()) {  %>
                 <tr><td><%=rs1.getInt(1)%></td>
                 <td><%=rs1.getString("item_name")%></td>
                 <td><%=rs1.getString("item_type")%></td>
            <td><%=rs1.getString("expiry_date")%></td>
                 <td><%=rs1.getString("item_quantity")%></td></tr>
        <%           
            }
            conn.close(); 
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

