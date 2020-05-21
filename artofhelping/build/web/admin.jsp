<%-- 
    Document   : admin.jsp
    Created on : 21 Sep, 2019, 6:39:55 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>Admin Login</title>
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
  <a href="home.jsp" id="back">Back</a>
</div>

<div style="background-color: #000000; margin-left:140px; color:white; opacity:0.8; padding:10px; font-family: 'Proxima Nova Soft', 'Helvetica Neue', sans-serif;">
<h2>Admin Login</h2>
</div>
<br>


<div class="card">
<div style="margin:25px">
<br>

<form action="adminlogin.jsp" method="post">
User Id: <input type="text" name="user" placeholder="UserID"><br>
Password : <input type="password" name="pass" placeholder="Password"><br>
<button type="submit">Login</button>
</form><br>
    ${param.er}
</div>
<br>
</div>

</body>
</html>
