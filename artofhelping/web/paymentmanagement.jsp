<%-- 
    Document   : paymentmanagement
    Created on : 7 Oct, 2019, 8:51:15 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Donation Details</title>
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

#prod {
  top: 160px;
  background-color: red;
  color: black;
}

#addwh {
  top: 80px;
  background-color: orange;
  color: black;
}
    </style>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">

<div id="mySidenav" class="sidenav">
  <a href="adminhome.jsp" id="back">Back</a>
</div>
        
        <div class="card">
        <div style="margin:25px">
        <br>
        <h3>Donation Details</h3>
        <table border="2">
            <center>
   <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Country</td>
        <td>State</td>
        <td>Address</td>
        <td>Amount</td>
        <td>Medicines</td>
        <td>Clothes</td>
        <td>Phone Number</td>
   </tr>
         <%@ page import="java.sql.*"%>
        <%
            try {  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nc","root","");  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from donationdet");  
            while(rs.next()) {  %>
                 <tr><td><%=rs.getInt("id")%></td>
                 <td><%=rs.getString("name")%></td>
                 <td><%=rs.getString("country")%></td>
                 <td><%=rs.getString("state")%></td>
                 <td><%=rs.getString("address")%></td>
                 <td><%=rs.getString("amount")%></td>
                 <td><%=rs.getString("medicines")%></td>
                 <td><%=rs.getString("clothes")%></td>
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
