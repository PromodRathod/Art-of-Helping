<%-- 
    Document   : products
    Created on : 29 Sep, 2019, 7:18:33 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Products</title>
        <style>
            .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin-left:140px;
  background-color: white; opacity: 0.9;
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
        </style>
    </head>
    <body style="font-family:'Proxima Nova Soft', 'Helvetica Neue', sans-serif; background-repeat: no-repeat; background-size: cover; background-attachment: fixed;" background="19604.jpg">

<div id="mySidenav" class="sidenav">
  <a href="warehouse.jsp" id="back">Back</a>
</div>
        <div class="card">
<div style="margin:25px">
<br>
      <h1>Add Products</h1>
      <br>
</div></div>

<div class="card">
<div style="margin:25px">


<div class="container">
<form class="modal-content" action="insertprod.jsp" method="post">
    
    
        WareHouse ID   : <input type="text" name="wid"><br>
    
	Item Name      : <input type="text" name="inm"><br>
        
	Item Type      : <input type="text" name="itp"><br>
        
        Item Quantity  : <input type="text" name="iqy"><br>
        
	Expiry Date    : <input type="text" name="exdt"><br>      

    <div class="clearfix">
        <button type="submit" class="submit">Add Products</button>
    </div><br><br>
         ${param.er}
    </div>
  </form>
  </div>
  </div>

    </body>
</html>
