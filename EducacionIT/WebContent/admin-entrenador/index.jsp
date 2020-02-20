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
<title>Ingresar al Admin</title>
</head>
<body>
<center>
<div class="container-fluid">
       <div class="row ">
               <div class="col-12 color2 slider ">

<form id="medio" action="/com.EducacionIT/ValidarDatos" method="post">
<div class="col-lg-6">
<div class="card w-auto" style="width: 50rem;">
                <div class="card-body">
<div class="titulo">
<h2>INGRESAR DATOS</h2>
<hr></hr>
</div>
<div class="mensajeerror">
<% if(request.getAttribute("mensaje") != null)
{
	out.print("El mail o la contraseña son incorrectos");

}

out.print("</br>");
	%>
	</div>
<br>
<input type="text" class="form-control" name="mail" placeholder="Ingresar mail"/>
<br>
<input type="password" class="form-control" name="password" placeholder="Ingresar password" />
<br>
<button type="submit" class="btn btn-dark   btn btn-block">Ingresar</button>
</div>
</div>
</div>
</form>

</body>
</html>