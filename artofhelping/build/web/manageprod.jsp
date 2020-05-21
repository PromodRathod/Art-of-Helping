<%-- 
    Document   : manageprod
    Created on : 6 Oct, 2019, 1:27:53 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Products</title>
        <style>
            .card1 {
  margin-top: 100px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 600px;
  margin-left:150px;
  background-color: white; opacity: 0.8;
  text-align: left;
  font-family: 'Proxima Nova Soft', 'Helvetica Neue', sans-serif;
  float: left;
}

.card2 {
  top: 100px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 600px;
  margin-left:300px;
  background-color: white; opacity: 0.8;
  text-align: left;
  font-family: 'Proxima Nova Soft', 'Helvetica Neue', sans-serif;
  float : right;
  position: absolute;
  left: 500px;
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
        </style>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">

<div id="mySidenav" class="sidenav">
  <a href="goods.jsp" id="back">Back</a>
</div>
        
       
<div class="card2">
<div style="margin:25px">
    <br>
     ${param.er}
</div>
<br>
</div>
         <%@page import="java.util.*"%>
        <%@page import="java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nc", "root", "");
Statement stmt=conn.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from tempdtdet where id='"+id+"'");  
            if(rs.next()) {
 %>
<div class="card1">
<div style="margin:25px">
    <br>
    <h3>Managing Customer Details and Products in WareHouses</h3>
    <h4>If it is related to cash use this form</h4>

<div class="container">
<form class="modal-content" action="updtprod1.jsp" method="post">
    
        WareHouse ID   : <input type="text" name="wid"><br>
        Temporary ID   : <input type="text" value="<%=request.getParameter("id")%>" name="id"><br>
        Name           : <br><input type="text" value="<%=rs.getString("name")%>" name="name"><br>
        Phone Number   : <input type="text" value="<%=rs.getString("phone_no")%>" name="phno"><br>
        Country        : <input type="text" value="<%=rs.getString("country")%>" name="cty"><br>
        State          : <br><input type="text" value="<%=rs.getString("state")%>" name="stt"><br>
        Address        : <input type="text" value="<%=rs.getString("address")%>" name="add"><br>
        Amount         : <input type="text" value="<%=rs.getString("amount")%>" name="amt"><br>
        Item Name      : <input type="text" value="<%=rs.getString("med_name")%>" name="itnm"><br>
        <div class="clearfix">
        <button type="submit" class="submit">Submit</button>
        </div><br><br>
        </form>
        </div>
        </div>
  </div>
        
<div class="card2">
<div style="margin:25px">
    <br>
    <h3>Managing Customer Details and Products in WareHouses</h3>
     <h4>If it is related to medicine use this form</h4>
<div class="container">
<form class="modal-content" action="updtprod.jsp" method="post">
        WareHouse ID   : <input type="text" name="wid"><br>
        Temporary ID   : <input type="text" value="<%=request.getParameter("id")%>" name="id"><br>
        Name           : <br><input type="text" value="<%=rs.getString("name")%>" name="name"><br>
        Phone Number   : <input type="text" value="<%=rs.getString("phone_no")%>" name="phno"><br>
        Country        : <input type="text" value="<%=rs.getString("country")%>" name="cty"><br>
        State          : <br><input type="text" value="<%=rs.getString("state")%>" name="stt"><br>
        Address        : <input type="text" value="<%=rs.getString("address")%>" name="add"><br>
        Amount         : <input type="text" value="<%=rs.getString("amount")%>" name="amt"><br>
        Item Name      : <input type="text" value="<%=rs.getString("med_name")%>" name="itnm"><br>
        Item Type      : <input type="text" name="imtp"><br>
        Item Quantity  : <input type="text" value="<%=rs.getString("item_qty")%>" name="itqy"><br>
        Expiry Date    : <input type="text" name="dt"><br>
        Clothes        : <input type="text" name="ct"><br>
        
    <div class="clearfix">
        <button type="submit" class="submit">Submit</button>
    </div><br><br><br>
    </form>
    </div>
  </div>
  </div>
      
    <%  
    }
    conn.close();
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>
