<%@ page import="com.educacion.Servlets.InsertarPersona"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>Ingresar Entrenador</title>
 <style>
          .color2{background:#0AB1F4  ;}
          .slider{
          /* background: url("../img/Chivacola.jpg"); */
          /* Ocupara toda la altura disponible */
          height: 45vh;
        }
    .titulo
    {
      color:#1658C2  ;
    }
    </style>
</head>
<body>
<center>
<div class="container-fluid">
       <div class="row ">
                <div class="col-12 color2 slider ">
<div class="col-lg-6">
 <br>
 <br>
<div class="card w-auto" style="width: 50rem;">
<div class="card-body">
<div class="titulo">
 <h2>INSERTAR ENTRENADOR</h2>
 </div>
 <hr></hr>  
 <br>
 <br>
<form action="/com.EducacionIT/InsertarEntrenador" method="POST" >
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Nombre</span>
    </div>
    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" onblur="revisar(this)" onkeyup="revisar(this)" Id="nombre" required name="nombre">
  </div>
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Apellido</span>
    </div>
    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="apellido" required name="apellido">
  </div>
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Dni</span>
    </div>
    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="dni" maxlength="8" required name="dni" >
  </div>
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Correo</span>
    </div>
    <input type="email" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="correo" required name="correo">
  </div>
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Fecha Nacimiento</span>
    </div>
    <input type="date" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="fecha" required name="fechanacimiento">
  </div>
  <div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Fecha Carnet </span>
    </div>
    <input type="date" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="fecha" required name="fechaexpiracioncarnet">
  </div>
  <div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Contraseña </span>
    </div>
    <input type="date" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="fecha" required name="password">
  </div>
<button type="submit" class="btn btn-dark   btn btn-block">Enviar</button>
</div>
</div>
</div>
</div>
</div>
</div>
</form>
</center>
</body>
</html>