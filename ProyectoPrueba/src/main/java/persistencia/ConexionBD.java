/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
/**
 *
 * @author E5-473
 */
public class ConexionBD {
    private String conectorInstalado = "jdbc:mysql:";
    private String host = "localhost:3306";
    private String baseDatos = "fundalink";
    private String username = "root";
    private String password = "root";
    private Connection conexion;
    private Statement ejecutor;

    public ConexionBD() {
        conectar();
    }
    
    
    public boolean isConectado() {
        return (this.conexion != null);
    }
    
    
    public void conectar()
    {
        try
        {
            String cadenaConexion = conectorInstalado + "//" + host + "/" + baseDatos;
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(cadenaConexion, username, password);
            ejecutor = conexion.createStatement();
            ejecutor.setQueryTimeout(30);  // set timeout to 30 sec.
            //System.out.println("conexión creada: "+conexion);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    
    
    }
    
    public ResultSet ejecutarQuery(String sql)
    {
        ResultSet rs = null;
        try
        {
            rs = ejecutor.executeQuery(sql);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    
    public ResultSet ejecutarUpdate(String sql)
    {
        ResultSet rs = null;
        try
        {
            int cant = ejecutor.executeUpdate(sql);
            if (cant > 0) {
                rs = ejecutor.getGeneratedKeys();
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    
    public void desconectar()
    {
        try {
            conexion.close();
            conexion = null;
        }
        catch(Exception e) {
            System.out.println(e);
        }
    }
}

