<%-- 
    Document   : fundaciones_form
    Created on : 15/09/2021, 10:25:00 a. m.
    Author     : Ariel Agudelo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <title>Formulario de Fundaciones</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

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

    </head>
<body>
    <h2 style="text-align:center"> 
Logo de Fundalink

</h2>
    <hr>  
<h1 style="text-align:center"> 
Crear una Nueva Fundación 

</h1>
  <!-- INICIO FORMULARIO HTML -->
<form method="POST" action="fundaciones_ctrl.jsp">
   
    <div class="form-row ">
         <!-- AQUI VA UN ID PERO NO SE PARA QUE SE USA !! -->
       
                       
        <div class="col-sm-4">
            <div class="p-2" >
            <label for="txtNombre" > Nombre:<span class="red">*</span></label>
            <input type="text" class="form-control" id="txtNombre" name="txtNombre" required>
            </div> 
        </div> 
      
        <div class="col-sm-4">
            <div class="p-2" >
            <label for="txtDireccion" >Dirección:<span class="red">*</span></label>
            <input type="text" class="form-control"  id="txtDireccion" name="txtDireccion" required>
            </div>
        </div>
         <div class="col-sm-4" >
            <div class="p-2">
                <label for="txtEmail">Email:<span class="red">*</span></label>
                <input type="email" class="form-control"  id="txtEmail" name="txtEmail"  required>
            </div>
        </div>
    </div>
            
    <div class="form-row">
        	
        <div class="col-sm-4">
            <div class="p-2">
            <label for="txtRepresentante" >Representante:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtRepresentante" name="txtRepresentante" required>
            </div>
        </div>
        <div class="col-sm-4" >
            <div class="p-2">
                <label for="txtUrl" >URL:</label>
                <input type="url" class="form-control"  id="txtUrl" name="txtUrl"  required>
            </div>
        </div>
        
            <div class="col-sm-4">
            <div class="p-2">
            <label for="txtTelefono">Teléfono:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtTelefono" name="txtTelefono" required>
            </div>
        </div>
        
    </div>

    <div class="form-row">
            
            
             <div class="col-sm-4">
            <div class="p-2">
            <label for="txtUsername">Usuario:<span class="red">*<span> </label>
            <input type="text" class="form-control"  id="txtUsername" name="txtUsername" required>
            </div>
        </div>
        
            <div class="col-sm-4">
            <div class="p-2">
            <label for="txtPassword">Contraseña:<span class="red">*<span> </label>
            <input type="password" class="form-control"  id="txtPassword" name="txtPassword" required>
            </div>
        </div>
        
            <div class="col-ms-4">
            <div  class="p-2">
            <label >Tipo de Fundación:<span class="red">*</span></label>
            <select class="custom-select"  required>
                <option selected disabled value="">Selecciona el tipo</option>
                <option value="Tipo 1">Sociales</option>
                <option value="Tipo 2">Ambientales</option>
                <option value="Tipo 3">Culturales</option>
                <option value="Tipo 4">Otras</option>
            </select>
            </div>
        </div>
        
    </div>
    
   
   

<div class="form-row">
        
    </div>
    <div class="form-row">
      <div class="mx-auto">
          <div class="p-4"></div>
    	
    </div>
</div>
</div>
    <div class="form-row">
	<div class="mx-auto">
        <button class="btn btn-primary" type="submit" id="btnSubmit" name="btnSubmit" value="nuevo">Guardar</button>
        <button class="btn btn-success" type="reset" id="btnReset" name="btnReset">Limpiar</button>
    </div>
 </div>

</form>
</body>
  

</html>
