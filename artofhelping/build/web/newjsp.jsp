<%-- 
    Document   : newjsp
    Created on : 23 Sep, 2019, 8:33:13 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String um = request.getParameter("user");
            out.println(um);
        %>
    </body>
</html>
