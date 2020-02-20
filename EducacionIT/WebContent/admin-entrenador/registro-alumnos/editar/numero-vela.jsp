<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
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
<title>Ingresar al Admin</title>
</head>
<body>

<center>
<div class="container-fluid">
       <div class="row ">
               <div class="col-12 color2 slider ">

<form id="medio" action="/com.EducacionIT/EditarNumeroDeVelaAlumno" method="post">
<div class="col-lg-6">
<div class="card w-auto" style="width: 50rem;">
                <div class="card-body">
<div class="titulo">
<h2>Editar Numero De Vela</h2>
<hr></hr>
</div>
<br>
<input type="number" class="form-control" name="numerodevela" placeholder="Ingresar Numero De Vela"/>
<br>
<input type="hidden" class="form-control" name="id" value=<% out.print(request.getParameter("datos")); %> />

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