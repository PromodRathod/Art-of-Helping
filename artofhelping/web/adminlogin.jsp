<%-- 
    Document   : adminlogin
    Created on : 23 Sep, 2019, 8:09:20 PM
    Author     : Promod Rathod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
        <%@ page import="java.sql.*"%>
        <%
            String um =request.getParameter("user");
            String ps =request.getParameter("pass");
            String user;
            String pw;
            try {  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nc","root","");  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from admin");  
            while(rs.next()) {  
                user = rs.getString(1);
                pw = rs.getString(2);
                if(um.equals(user) && ps.equals(pw)) { %>
                    <%@ include file="adminhome.jsp"%>
               <% }
                else { %>
                    <jsp:include page="admin.jsp">
                        <jsp:param name="er" value="Invalid User Id and Password"/>
                    </jsp:include>
              <%  } 
            //System.out.println(rs.getString(1)+"  "+rs.getInt(2));  
              
            }
            con.close();
        }
        catch(ClassNotFoundException | SQLException e){ 
            System.out.println(e);
        }
        %>
    </body>
</html>
