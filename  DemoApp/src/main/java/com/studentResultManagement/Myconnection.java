package com.sabari;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;
public class Myconnection {
     
      public static Connection initialdatabase() throws SQLException,ClassNotFoundException{
      
      String url="jdbc:mysql://localHost:3306/studentresults";
      String username="root";
      String password="Mybirthday123@1";
      
 
     Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,username,password);
     
     return con;
     
      }
}
     
     
