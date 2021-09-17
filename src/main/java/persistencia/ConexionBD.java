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
    
    /**
     * Genera el enlace a la base de datos usando los parámetros iniciales, y 
     * establece el tiempo de ejecución máximo en 30s
     */
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
    
    /**
     * Ejecuta una sentencia SQL de consulta
     * @param sql la consulta SQL que se arma para consultar registros
     * @return un resultset con los registros obtenidos por la consulta
     */
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
    
    /**
     * Ejecuta una sentencia SQL de inserción
     * @param sql la consulta SQL que se arma para insertar un registro
     * @return un resultset con el id del registro que se inserta
     */
    
    public ResultSet ejecutarInsert(String sql){
      ResultSet rs = null;
      try
      {
          int cant = ejecutor.executeUpdate(sql, Statement.RETURN_GENERATED_KEYS);
           if (cant >0){
               
               rs = ejecutor.getGeneratedKeys();
           }
          
      }
      catch (Exception e)
      {
          e.printStackTrace();
    }
    return rs;
    
       
    }
    
    /**
     * Ejecuta una sentencia SQL de modificación
     * @param sql la consulta SQL que se arma para modificar un registro
     * @return la cantidad de registros que se han modificado
     */
    public int ejecutarUpdate(String sql)
    {
       int cant = 0;
        try
        {
             cant = ejecutor.executeUpdate(sql);
            
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return cant;
    }
    
    /**
     * Cierra la conexión a la base de datos. Debe usarse siempre luego de ejecutar 
     * una sentencia y obtener la información requerida
     */
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

