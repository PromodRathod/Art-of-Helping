<%-- 
    Document   : addwh
    Created on : 5 Oct, 2019, 6:29:50 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add WareHouse</title>
        <style>

	.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 660px;
  margin-left:140px;
  background-color: white; opacity: 0.9;
  text-align: left;
  font-family: 'Proxima Nova Soft', 'Helvetica Neue', sans-serif;
}

	
	
	input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
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

.reset, .submit {
 
  width: 100%;
}

.container {
  padding: 16px;
  max-width:1000%;
  align:center;
}
	#mySidenav a {
  position: absolute;
  left: -70px;
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
      <h1>Add New WareHouse Details</h1>
      <br>
</div></div>

<div class="card">
<div style="margin:25px">


<div class="container">
<form class="modal-content" action="insertwh.jsp" method="post">
    
    
        WareHouse ID   : <input type="text" name="wid"><br>
    
	WareHouse Name : <input type="text" name="wnm"><br>
        
	Place          : <input type="text" name="place"><br>
        
	Incharge Name  : <input type="text" name="icn"><br>
        
        Phone Number   : <input type="text" name="pno"><br>

    <div class="clearfix">
        <button type="submit" class="submit">Add New WareHouse</button>
    </div><br><br>
         ${param.er}
    </div>
  </form>
  </div>
  </div>
    </body>
</html>
