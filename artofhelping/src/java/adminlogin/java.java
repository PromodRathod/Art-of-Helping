/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminlogin;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.*;
/**
 *
 * @author Promod Rathod
 */
public class java {
    public static void main(String[] args){
        try {  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dbms","root","");  
            Statement stmt=con.createStatement();  
            ResultSet rs=stmt.executeQuery("select * from admin");  
            while(rs.next())  
            System.out.println(rs.getString(1)+"  "+rs.getInt(2)); 
            con.close();  
        }
        catch(ClassNotFoundException | SQLException e){ 
            System.out.println(e);
        }  
    }  
}
