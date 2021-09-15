/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

/**
 *
 * @author E5-473
 */
public class Fundaciones {
    
    private int idFundacion;
    private String Nombre;
    private String Direccion;
    private String Email;  
    private String Representante;
    private String URL;
    private String Telefono;
    private String Fundacionescol;
    private String Username;
    private String Password;
    
    
    public Fundaciones(){

    }

    public Fundaciones(int idFundacion, String Nombre, String Direccion, String Email, String Representante, String URL, String Telefono, String Fundacionescol, String Username, String Password) {
        this.idFundacion = idFundacion;
        this.Nombre = Nombre;
        this.Direccion = Direccion;
        this.Email = Email;
        this.Representante = Representante;
        this.URL = URL;
        this.Telefono = Telefono;
        this.Fundacionescol = Fundacionescol;
        this.Username = Username;
        this.Password = Password;
    }

    public Fundaciones(String Nombre, String Direccion, String Email, String Representante, String URL, String Telefono, String Fundacionescol, String Username, String Password) {
        this.Nombre = Nombre;
        this.Direccion = Direccion;
        this.Email = Email;
        this.Representante = Representante;
        this.URL = URL;
        this.Telefono = Telefono;
        this.Fundacionescol = Fundacionescol;
        this.Username = Username;
        this.Password = Password;
    }

    public int getIdFundacion() {
        return idFundacion;
    }

    public void setIdFundacion(int idFundacion) {
        this.idFundacion = idFundacion;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getRepresentante() {
        return Representante;
    }

    public void setRepresentante(String Representante) {
        this.Representante = Representante;
    }

    public String getURL() {
        return URL;
    }

    public void setURL(String URL) {
        this.URL = URL;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getFundacionescol() {
        return Fundacionescol;
    }

    public void setFundacionescol(String Fundacionescol) {
        this.Fundacionescol = Fundacionescol;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }
      
}
    
        