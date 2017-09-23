/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dhtmlx.demo;

/**
 *
 * @author Sharayu
 */
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection 
{
                        public static java.sql.Connection getConnection() 
                        {
                          	java.sql.Connection conn = null;
                          	try {
                                        	Class.forName("com.mysql.jdbc.Driver");
                                        	String url = "jdbc:mysql://localhost:3306/eventcal";
                                                String user = "root";
                                                String password = "root";
                                                conn = DriverManager.getConnection(url, user, password);
                                                            System.out.println("database connected");
                                    }
                                catch (ClassNotFoundException e1) 
                                {
                                    e1.printStackTrace();
                                }
                                catch (SQLException e1) 
                                {
                                    e1.printStackTrace();
                                }
                                return conn;
                        }
                        
}
