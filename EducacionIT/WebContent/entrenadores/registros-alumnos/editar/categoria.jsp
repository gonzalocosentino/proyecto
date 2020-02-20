<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Categoria</title>
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
</head>
<body>
<%
if(session.getAttribute("mail") == null)
{
response.sendRedirect("http://localhost:8080/com.EducacionIT/entrenadores/admin-entrenador");	
}

%>
<center>
<div class="container-fluid">
       <div class="row ">
               <div class="col-12 color2 slider ">

<form id="medio" action="/com.EducacionIT/EditarCategoriaAlumno" method="POST">
<div class="col-lg-6">
<div class="card w-auto" style="width: 50rem;">
<div class="card-body">
<div class="titulo">
<h2>ACTUALIZAR CATEGORIA</h2>
<hr></hr>
</div>
<br>
<select value="text" class="form-control" name="categoria" required>
<option value="">Seleccionar Categoria</option>
<option value="escuela">Escuela</option>
<option value="escuelajuvenial">Escuela Juvenil</option>
<option value="principiantes">Principiantes</option>
<option value="pre-principiantes">Pre-principiantes</option>
<option value="timoneles">Timoneles</option>
<option value="cadet">Cadet</option>
<option value="420">420</option>
<option value="29er">29er</option>
<option value="laser">Laser</option>
<option value="moth-waszp">Moth-Waszp</option>
</select>
<br/>
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

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>

</body>
</html>