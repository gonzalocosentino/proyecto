<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>

</head>
<body>
<div class="container-fluid">
       <div class="row ">
       <div class="col-lg-12">
       <br>
<div class="card">
  <div class="card-header">
    <center><h3>Formulario Alumno</h3></center>
  </div>
  <div class="card-body">
  <hr></hr>
    <center><h5 class="card-title">Datos Alumno</h5></center>
    <hr></hr>
  <form action="/com.EducacionIT/InsertarAlumnos" method="POST" >
  
   
  
   <% if(request.getAttribute("correcto") !=null)
                 {
                %>	 
                    <div class="alert alert-success" role="alert">
	<% out.print("Se envio correctamente los datos");%>
</div>
                <%}%>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nombre</label>
      <input type="text" class="form-control" id="inputEmail4" name="nombre" placeholder="Nombre">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido</label>
      <input type="text" class="form-control" id="inputPassword4" name="apellido" placeholder="Apellido">
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">D.N.I</label>
      <input type="number" class="form-control" id="inputEmail4" name="dni" placeholder="D.N.I">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Fecha de Nacimiento</label>
      <input type="date" class="form-control" id="inputPassword4" name="fecha_nacimiento">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Correo</label>
      <input type="email" class="form-control" id="inputEmail4" name="mail" placeholder="Correo">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Ceular</label>
      <input type="number" class="form-control" id="inputEmail4" name="celular" placeholder="Celular">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Socio</label>
      <input type="number" class="form-control" id="inputEmail4" name="numero_socio" placeholder="Grupo Sanguineo">
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Vela</label>
      <input type="number" class="form-control" id="inputEmail4" name="numero_de_vela" placeholder="Numero de Vela">
    </div>	
  </div>
  <div class="form-group">
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
  </div>

  <hr></hr>
    <center><h5 class="card-title">Datos Padre</h5></center>
    <hr></hr>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nombre</label>
      <input type="text" class="form-control" id="inputEmail4" name="nombre_padre" placeholder="Nombre">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido</label>
      <input type="text" class="form-control" id="inputPassword4" name="apellido_padre" placeholder="Apellido">
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">D.N.I</label>
      <input type="number" class="form-control" id="inputEmail4" name="dni_padre" placeholder="D.N.I">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Fecha de Nacimiento</label>
      <input type="date" class="form-control" id="inputPassword4" name="fecha_nacimiento_padre" placeholder="">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Correo</label>
      <input type="emial" class="form-control" id="inputEmail4" name="mail_padre" placeholder="Correo">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Ceular</label>
      <input type="number" class="form-control" id="inputEmail4" name="celular_padre" placeholder="Celular">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Socio</label>
      <input type="number" class="form-control" id="inputEmail4" name="numero_socio_padre" placeholder="Nº De Socio">
    </div>    
  </div>
  <hr></hr>
    <center><h5 class="card-title">Datos Madre</h5></center>
    <hr></hr>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nombre</label>
      <input type="text" class="form-control" id="inputEmail4" name="nombre_madre" placeholder="Nombre">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido</label>
      <input type="text" class="form-control" id="inputPassword4" name="apellido_madre" placeholder="Apellido">
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">D.N.I</label>
      <input type="number" class="form-control" id="inputEmail4" name="dni_madre" placeholder="D.N.I">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Fecha de Nacimiento</label>
      <input type="date" class="form-control" id="inputPassword4" name="fecha_nacimiento_madre" placeholder="">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Correo</label>
      <input type="email" class="form-control" id="inputEmail4" name="mail_madre" placeholder="Correo">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Ceular</label>
      <input type="number" class="form-control" id="inputEmail4" name="celular_madre" placeholder="Celular">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Socio</label>
      <input type="number" class="form-control" id="inputEmail4" name="numero_socio_madre" placeholder="Nº De Socio">
    </div>    
  </div>
  
<br>
 <button type="submit" class="btn btn-primary">Enviar</button>
 </form>
</div>
</div>
 <br>
</div>


  
    </div>

</div>
    


    <br>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>

</body>
</html>