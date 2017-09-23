/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import java.sql.*;

/**
 *
 * @author Sharayu
 */
public class database 
{
    Connection con;
    public Connection dataConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost:3306/tryProject","root","admin");
            System.out.println("Database connected");
        }
        catch(Exception e)
        {
            System.out.println("Database not connected" + e);
        }
        return con;
    }    
}
