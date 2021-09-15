/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import org.testng.Assert;
import org.testng.annotations.Test;

import persistencia.ConexionBD;
import persistencia.FundacionesDAO;
import logica.ColeccionFundaciones;
/**
 *
 * @author E5-473
 */
public class TestGeneral {
    
    @Test
    
    public void verificarConexion(){
        ConexionBD con= new ConexionBD();
        Assert.assertTrue(con.isConectado());
        con.desconectar();
        Assert.assertFalse(con.isConectado());
    }
    @Test
    public void verificarCargaFundaciones(){
        
        FundacionesDAO dao=new FundacionesDAO();
        Assert.assertTrue(dao.consultarFundaciones().size() >0, "No se Cargaron datos");
    }
    }
    
    
    
    
    

