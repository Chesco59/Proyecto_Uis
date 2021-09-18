<%-- 
    Document   : fundaciones_lista
    Created on : 11/09/2021, 9:47:41 a. m.
    Author     : E5-473
--%>

<%@page import="logica.Fundaciones"%>
<%@page import="logica.ColeccionFundaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <title>Listado Fundaciones</title>
    </head>
    <body>
        <div class="container mt-5"> 
            <h2 Style="text-align:center"> Logo FundaLink </h2>
            <h3 class="mb-3">Lista de Fundaciones</h3>
            <hr>
            <form>
                <div class="row mb-3">
                    <label for="txt1" class="col-form-label col-sm-2">Filtrar por nombre</label>
                    <input type="text" class="col-form-control col-sm-4" id="txt1" name="txt1" value="">
                    <button type="button" class="btn btn-light col-sm-1"><i class="bi bi-search"></i></button>
                    <button class="btn btn-primary col-sm-2" type="submit" id="btnSubmit" name="btnSubmit" value="regresar" >Nueva Fundación</button><!-- comment -->
                </div>

                <form method="POST" action="fundaciones_form.jsp">
                    <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Email</th>
                            <th scope="col">Representante</th>
                            <th scope="col">Url</th>
                            <th scope="col">Teléfono</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Contraseña</th>
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
                                <button type="button" class="btn btn-warning"><i class="bi bi-pencil-fill"></i></button>
                                <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button>
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
</html>