/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;


import java.sql.*;

/**
 *
 * @author AlejandroPlatas
 */
public class conexion {

    Connection con;

    public Connection Conexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/bd_ventas?user=root&password=");
        } catch (Exception e) {
        }
        return con;
    }

}
