<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>

<title>Editar Contraseña</title>
  <style>
          .color2{background:#0AB1F4  ;}
          .slider{
          /* background: url("../img/Chivacola.jpg"); */
          /* Ocupara toda la altura disponible */
          height: 55vh;
        }
    .titulo
    {
      color:#1658C2 ;
    }
    #medio
    {
       margin-top:15%;
    }
   
    </style>
</head>
<body>
<center>
<div class="container-fluid">
       <div class="row ">
               <div class="col-12 color2 slider ">

<form id="medio" action="/com.EducacionIT/EditarPassword" method="POST">
<div class="col-lg-6">
<div class="card w-auto" style="width: 50rem;">
                <div class="card-body">
<div class="titulo">
<h2>ACTUALIZAR CONTRASEÑA</h2>
<hr></hr>
</div>
<br>
<%
if(request.getAttribute("mensajeincorrecto") != null)
{
%>
<div class="alert alert-danger" role="alert">
<%out.print("Error al Actualizar la contraseña");%>
</div>
<% 	
}
%>
<%
if(request.getAttribute("mensajecorrecto") !=null)
{
%>
<div class="alert alert-success" role="alert">
	<% out.print("Se actualizo correctament la contraseña");%>
</div>
<%}%>
<input type="password" class="form-control" name="password" placeholder="Ingresar Contraseña" required/>
<br>
<input type="hidden" class="form-control" name="id" value=<% out.print(request.getParameter("IdCliente")); %> />

<button type="submit" class="btn btn-dark   btn btn-block">Guardar</button>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</center>
</body>
</html>