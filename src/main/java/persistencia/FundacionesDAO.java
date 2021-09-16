/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import logica.Fundaciones;

/**
 *
 * @author E5-473
 */
public class FundacionesDAO {
     public ArrayList<Fundaciones> consultarFundaciones() {
        ArrayList<Fundaciones> lista = new ArrayList<>();
        ConexionBD con = new ConexionBD();
        ResultSet rs = con.ejecutarQuery("SELECT idFundacion, Nombre, Direccion, Email, Representante, URL, Telefono, Fundacionescol, Username, Password FROM fundaciones ");
        try {
            while (rs.next()) {
                int idFundacion = rs.getInt("idFundacion");
                String Nombre = rs.getString("Nombre");
                String Direccion = rs.getString("Direccion");
                String Email = rs.getString("Email");
                String Representante = rs.getString("Representante");
                String URL = rs.getString("URL");
                String Telefono = rs.getString("Telefono");
                String Fundacionescol = rs.getString("Fundacionescol");
                String Username = rs.getString("Username");
                String Password = rs.getString("Password");
                
                Fundaciones j = new Fundaciones(idFundacion, Nombre, Direccion, Email, Representante, URL, Telefono, Fundacionescol, Username, Password);
                lista.add(j);
            }
        } catch (SQLException ex) {
            return null;
        }
        return lista;
    }
      public int guardarNuevaFundacion(Fundaciones j) {
       
        ConexionBD con = new ConexionBD();
        
        String Nombre = j.getNombre();
        String Direccion = j.getDireccion();
        String Email = j.getEmail();
        String Representante = j.getRepresentante();
        String URL = j.getURL();
        String Telefono = j.getTelefono();
        String Fundacionescol = j.getFundacionescol();
        String Username = j.getUsername();
        String Password = j.getPassword();
                        
                            
        String sql = "INSERT INTO fundaciones (Nombre, Direccion, Email, Representante, URL,Telefono, Fundacionescol, Username, Password) VALUES ('"+Nombre+"', '"+Direccion+"', '"+Email+"', '"+Representante+"', '"+URL+"', '"+Telefono+"', '"+Fundacionescol+"', '"+Username+"', '"+Password+"') ";
        //System.out.println(sql);
        ResultSet rs = con.ejecutarUpdate(sql);
        int id = 0;
        try {
            if (rs.next()){
                id = rs.getInt(1);
            }
        } catch (SQLException ex) {
            con.desconectar();
            return 0; 
        }
        con.desconectar();
        return id;
    }   
}
