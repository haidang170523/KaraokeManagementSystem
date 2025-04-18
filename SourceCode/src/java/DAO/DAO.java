/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
    protected Connection con;
    
    public  DAO(){
        try{
            String url = "jdbc:sqlserver://localhost:1433;databaseName=karaoke";
            String name = "sa";
            String pass = "123";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url, name, pass);
        }catch(ClassNotFoundException | SQLException e){
            System.out.println(e);
        }
    }
}
