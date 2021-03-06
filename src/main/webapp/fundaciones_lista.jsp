<%-- 
    Document   : fundaciones_lista
    Created on : 11/09/2021, 9:47:41 a. m.
    Author     : E5-473
--%>

<%@page import="logica.Fundaciones"%>
<%@page import="logica.ColeccionFundaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        
        <style>
body {
    background-color: beige;
	
}
.red {
    color: red;
}
 
#footer {
    position: fixed;
    width: 100%;
    height: 40px;
    line-height: 40px;
    vertical-align: middle;
    background-color: black;
    color: white;
    text-align: center;
    bottom: 0;
    left: 0;
}

</style>
        
        <title>Listado Fundaciones</title>
    </head>
    <body>
        <div class="container mt-5"> 
            <h2 Style="text-align:center"> Logo FundaLink </h2>
            <h3 class="mb-3">Lista de Fundaciones</h3>
            <hr>
            <!--aca va el codigo para ejecutar la accion --->
                               
                                                           
            <form>
                <div class="row mb-4 row-cols-auto">
                    <label for="txt1" class="col-form-label col-sm-2">Filtrar por nombre</label>
                    <input type="text" class="col-form-control col-sm-4" id="txt1" name="txt1" value="">
                    <button type="button" class="btn btn-light col-sm-1"><i class="bi bi-search"></i></button>
                    <a href="fundaciones_form.jsp?accion=nuevo"> <button class="btn btn-primary" type="button" id="nuevo" name="nuevo">Nueva Fundacion</button></a><!-- comment -->
                </div>

                
                    <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Direcci??n</th>
                            <th scope="col">Email</th>
                            <th scope="col">Representante</th>
                            <th scope="col">Url</th>
                            <th scope="col">Tel??fono</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Contrase??a</th>
                        </tr>
                    </thead>
                    <%
                        ColeccionFundaciones coleccion = new ColeccionFundaciones();
                        boolean hayDatos = coleccion.cargarFundaciones();
                    %>
                    <tbody>
                        <% if (hayDatos) { 
                          for (Fundaciones j : coleccion.getLista()) { %>
                         
                        
                        <tr>
                            <td scope="row"><%= j.getIdFundacion()%></td>
                            <td><%= j.getNombre() %></td>
                            <td><%= j.getDireccion()%></td>
                            <td><%= j.getEmail()%></td>
                            <td><%= j.getRepresentante() %></td>
                            <td><%= j.getURL() %></td>
                            <td><%= j.getTelefono() %></td>
                            <td><%= j.getFundacionescol() %></td>
                            <td><%= j.getUsername() %></td>
                            <td><%= j.getPassword() %></td>
                            <td>
                                <a href="fundaciones_form.jsp?accion=editar&id=<%=j.getIdFundacion()%>"<button type="button" class="btn btn-warning" id="editar" name="editar"><i class="bi bi-pencil-fill"></i></button></a>
                                <a href="fundaciones_form.jsp?accion=borrar&id=<%=j.getIdFundacion()%>" <button type="button" class="btn btn-danger" id=""borrar" name=""borrar"><i class="bi bi-trash"></i></button></a>
                            </td>
                        </tr>
                        <%
                            } %> 
                         <% } else { %>
                                                                    
                        <tr>                             
                            <td colspan="5">No hay datos</td>
                        </tr>
                        <% } %>
                    </tbody>
                    
                    </table>
                   
            </form>
        </div>
    </body>
