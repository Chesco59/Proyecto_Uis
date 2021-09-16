<%-- 
    Document   : fundaciones_ctrl
    Created on : 15/09/2021, 10:56:17 a. m.
    Author     : E5-473
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de datos</title>
    </head>
    <body>
        <%
            
            //String id = request.getParameter("txtId");
            String Nombre = request.getParameter("txtNombre");
            String Direccion = request.getParameter("txtDireccion");
            String Email = request.getParameter("txtEmail");
            String Representante = request.getParameter("txtRepresentante");
            String Url = request.getParameter("txtUrl");
            String Telefono = request.getParameter("txtTelefono");
            String Username = request.getParameter("txtUsername");
            String Password = request.getParameter("txtPassword");
            
            //String accion = request.getParameter("btnSubmit");
            
            
            
            out.println ("Los datos enviados fueron: Nombre: \n"+Nombre+" Direccion: \n"+Direccion+ " Email: "+Email+" Representante: "+Representante+" Url: "+Url+" Telefono: "+Telefono+" Usuario: "+Username+" Contraseña: "+Password);
        %>
        <div>
        <button class="btn btn-primary" type="submit" id="btnSubmit" name="btnSubmit" value="nuevo" action="href://fundaciones_form.jsp">Regresar</button>
        </div>
        </body>
</html>
