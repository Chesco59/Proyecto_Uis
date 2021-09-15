/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.util.ArrayList;
import persistencia.FundacionesDAO;

/**
 *
 * @author E5-473
 */
public class ColeccionFundaciones {
    
    private ArrayList<Fundaciones> lista;
    
    public ArrayList<Fundaciones> getLista() {
        return lista;
    }
    
    public boolean cargarFundaciones() {
        FundacionesDAO dao = new FundacionesDAO();
        lista = dao.consultarFundaciones();
        if (lista.size() > 0) {
            return true;
        }
        else {
            return false;
        }
    } 
    
    
    
}
