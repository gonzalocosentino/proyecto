<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
       margin-top:10%;
    }
   .mensajeerror
   {
     color:#F2230A;
   }
    </style>
<title>Login Entrenadores</title>
</head>
<body>
<center>
<div class="container-fluid">
       <div class="row ">
               <div class="col-12 color2 slider ">
<form action="/com.EducacionIT/LoginEntrenadores" method="POST" id="medio">
<div class="col-lg-6">
<div class="card w-auto" style="width: 50rem;">
                <div class="card-body">
<div class="titulo">
<h2>INGRESAR DATOS</h2>
<hr></hr>
</div>
<%
if(request.getAttribute("fall-login") !=null)
{
%>
<div class="alert alert-danger" role="alert">
  El mail o la contraseña son incorrectos
  </div>
<%
}
%>
<input type="email" class="form-control" name="mail" placeholder="Ingresar Mail" />
<br/>
<input type="password" class="form-control" name="password" placeholder="Ingresar Contraseña" />
<br/>
<button type="submit" class="btn btn-dark btn btn-block" name="submit">Ingresar</button>
</div>
</div>
</div>
</form>
</center>
</body>
</html>