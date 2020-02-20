<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <center>FICHA MEDICA</center>
  </div>
   <br>
   <% if(request.getAttribute("mensaje") != null)
   {
   %>
   <div class="alert alert-success" role="alert">
  <center> <% 	out.print("Datos enviados correctamente");%></center>
    </div>
   <%}%>
  <% if(request.getAttribute("mensajenoexiste") !=null)
                 {
                %>	 
    <div class="alert alert-danger" role="alert">
	<% out.print("No existe como Alumno. ");%>
	<a href="http://localhost:8080/com.EducacionIT/entrenadores/formulario-alumnos/">Ir a formulario de Alumno</a>
</div>
 <%}%>
 
 <%
 if(request.getAttribute("mensajefichamedica") !=null)
 {
 %>
 <div class="alert alert-danger" role="alert">
  <% out.print("La ficha medica para el alumno ya esta ingresado"); %>
 </div>
 <%} %>
 
 <%if(request.getAttribute("error") !=null)
 {
 %>
 <div class="alert alert-danger" role="alert">
  <% out.print("Faltan ingresar datos"); %>
 </div>
 <%} %>
 
   

  <div class="card-body">
  <hr></hr>
    <center><h4 class="card-title">Datos Filiatorios</h4></center>
    <hr></hr>
  <form action="/com.EducacionIT/InsertarFichaMedicaAlumno" method="post"  >
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nombre</label>
      <input type="text" class="form-control" name="nombre" id="inputEmail4" placeholder="Nombre" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido</label>
      <input type="text" class="form-control" name="apellido" id="inputPassword4" placeholder="Apellido" >
    </div>
     <div class="form-group col-md-6">
      <label for="inputPassword4">D.N.I</label>
      <input type="number" class="form-control" name="dni" id="inputPassword4" placeholder="D.N.I" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Fecha de Nacimiento</label>
      <input type="date" class="form-control" name="fechaNacimiento" id="inputPassword4" placeholder="">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Obra Social</label>
      <input type="text" class="form-control" name="obraSocial" id="inputEmail4" placeholder="Obra Social">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">N Afiliado</label>
      <input type="text" class="form-control"  name="numeroAfiliado" placeholder="N Afiliado">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Grupo Sanguineo</label>
      <input type="text" class="form-control" id="inputEmail4" name="grupoSanguineo" placeholder="Grupo Sanguineo">
    </div>    
    <div class="form-group col-md-6">
      <label for="inputEmail4">Factor</label>
      <input type="text" class="form-control" id="inputEmail4" name="factor" placeholder="Factor">
    </div>	
  </div>
  <div class="form-group">
    <label for="inputAddress">Nombre del Padre, tutor o encargado </label>
    <input type="text" class="form-control" id="inputAddress" name="nombreTutor" placeholder="Nombre">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Domicilio</label>
      <input type="text" class="form-control" id="inputCity" name="domicilio" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Telefono</label>
      <input type="text" class="form-control" id="inputCity" name="telefono" placeholder="Telefono">
    </div>
    </div>
    <h5 class="card-title">En caso de necesidad informar al Sr./a:</h5>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Nombre</label>
      <input type="text" class="form-control" id="inputCity" name="nombreEmergencia" placeholder="Nombre">
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Apellido</label>
      <input type="text" class="form-control" id="inputCity" name="apellidoEmergencia" placeholder="Apellido">
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Domicilio</label>
      <input type="text" class="form-control" id="inputCity" name="domicilioEmergencia" placeholder="E.J: Cerrito 2454, Depto 5, Piso ">
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Telefono</label>
      <input type="text" class="form-control" id="inputCity" name="telefonoEmergencia" placeholder="Telefono ">
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Celular</label>
      <input type="text" class="form-control" id="inputCity" name="celularEmergencia" placeholder="Celular">
    </div>
  </div>
 <hr></hr>
  <center><h4>Historia Clinica</h4></center>
  <hr></hr>
  <center><h4 class="card-title">Enfermedades padecientes hasta la fecha</h4></center>
  <center>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Sarampion</label>
      <br>
      <input type="radio" name="sarampion" value="no" id="problema_0" onclick="mostrarReferencia();" required  /> No
<input type="radio" name="sarampion" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Hepatitis (tipo)</label>
      <br>
      <input type="radio" name="hepatitis" value="no" id="problema_0" onclick="mostrarReferencia();" required  /> No
      <input type="radio" name="hepatitis" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Paperas</label>
      <br>
      <input type="radio" name="paperas" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="paperas" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputCity">Poliomelitis</label>
      <br>
      <input type="radio" name="poliomelitis" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="poliomelitis" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Tos Convulsa</label>
      <br>
      <input type="radio" name="tosConvulsa" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="tosConvulsa" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Varicela</label>
      <br>
      <input type="radio" name="varicela" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="varicela" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Escarlatina</label>
      <br>
      <input type="radio" name="escarlatina" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="escarlatina" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">5ta. Eruptiva</label>
      <br>
      <input type="radio" name="eruptiva" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="eruptiva" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Rubeola</label>
      <br>
      <input type="radio" name="rubeola" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="rubeola" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Epilepsia</label>
      <br>
      <input type="radio" name="epilepsia" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="epilepsia" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Sinusitis</label>
      <br>
      <input type="radio" name="sinusitis" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="sinusitis" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
</div>
<div class="form-group col-md-8">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" name="otraInfo" id="inputAddress" placeholder="Otra">
  </div>
</center>

<center><h4 class="card-title">Enfermedades que padece o a la que es propenso</h4></center>
  <center>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Asma</label>
      <br>
      <input type="radio" name="asma" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
<input type="radio" name="asma" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Bronquitis</label>
      <br>
      <input type="radio" name="bronquitis" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="bronquitis" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Resfrio</label>
      <br>
      <input type="radio" name="resfrio" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="resfrio" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputCity">Afecciones del oido</label>
      <br>
      <input type="radio" name="afeccionesDeOido" value="no" id="problema_0" onclick="mostrarReferencia();" required  /> No
      <input type="radio" name="afeccionesDeOido" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
  <div class="form-group col-md-6">
      <label for="inputCity">Afecciones de nariz</label>
      <br>
      <input type="radio" name="afeccionesDeNariz" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="afeccionesDeNariz" value="si" id="problema_1" onclick="mostrarReferencia();"  required /> Si
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Afecciones del ojo</label>
      <br>
      <input type="radio" name="afeccionesDeOjo" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="afeccionesDeOjo" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Convulsiones</label>
      <br>
      <input type="radio" name="convulsion" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="convulsion" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Sonambulismo</label>
      <br>
      <input type="radio" name="sonambulismo" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="sonambulismo" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Desmayos</label>
      <br>
      <input type="radio" name="desmayos" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="desmayos" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
<div class="form-group col-md-6">
      <label for="inputCity">Constipaciones</label>
      <br>
      <input type="radio" name="constipacion" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="constipacion" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">HIV</label>
      <br>
      <input type="radio" name="hiv" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="hiv" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div> 
</div>
<div class="form-group col-md-8">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" name="otraInfoPropenso" id="inputAddress" placeholder="Otra">
  </div>
  
</center>
<h4 class="card-title">Vacunas o sueros recibidos (ultima fecha)</h4>
<div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antitetanica</label>
      <input type="date" class="form-control" id="inputEmail4" name="antitetanica">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Antidiferica</label>
      <input type="date" class="form-control" id="inputPassword4" name="antidiferica">
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">Antivariolica</label>
      <input type="date" class="form-control" id="inputEmail4" name="antivariolica">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Antipoliomielitica</label>
      <input type="date" class="form-control" id="inputPassword4"  name="antipoliomielitica">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antituberculosa</label>
      <input type="date" class="form-control" id="inputEmail4" name="antituberculosa">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antiofidica</label>
      <input type="date" class="form-control" id="inputEmail4" name="antiofidica">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antitifidica</label>
      <input type="date" class="form-control" id="inputEmail4" name="antitifidica">
    </div>   
  </div>
  <h4 class="card-title">Intervenciones Quirurgicas</h4>
  <div class="form-row">
   <div class="form-group col-md-6">
      <label for="inputCity">Apendicitis</label>
      <br>
      <input type="radio" name="apendicitis" value="no" id="problema_0" onclick="mostrarReferencia();" required  /> No
      <input type="radio" name="apendicitis" value="si" id="problema_1" onclick="mostrarReferencia();" required/> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Amigdalitis</label>
      <br>
      <input type="radio" name="amigdalitis" value="no" id="problema_0" onclick="mostrarReferencia();" required/> No
      <input type="radio" name="amigdalitis" value="si" id="problema_1" onclick="mostrarReferencia();" required/> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Hernia</label>
      <br>
      <input type="radio" name="hernia" value="no" id="problema_0" onclick="mostrarReferencia();" required/> No
      <input type="radio" name="hernia" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>    
    <div class="form-group">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" id="inputAddress" name="otraInfoQuirurgica" placeholder="Otra">
  </div> 
    </div>  
 <h4 class="card-title">Es alergico a:</h4>
   <div class="form-row">
   <div class="form-group col-md-6">
      <label for="inputCity">Comida</label>
      <br>
      <input type="radio" name="comida" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="comida" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Medicamentos</label>
      <br>
      <input type="radio" name="medicamentos" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="medicamentos" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Antibioticos</label>
      <br>
      <input type="radio" name="antibioticos" value="no" id="problema_0" onclick="mostrarReferencia();" required />No
      <input type="radio" name="antibioticos" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div> 
    <div class="form-group col-md-6">
      <label for="inputCity">Picadura de insectos</label>
      <br>
      <input type="radio" name="picaduraInsectos" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="picaduraInsectos" value="si" id="problema_1" onclick="mostrarReferencia();" required/> Si
    </div> 
    <div class="form-group col-md-6">
      <label for="inputCity">Polvo, Polen</label>
      <br>
      <input type="radio" name="polen" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="polen" value="si" id="problema_1" onclick="mostrarReferencia();" required/> Si
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Plumas</label>
      <br>
      <input type="radio" name="plumas" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="plumas" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>     
    </div> 
<div class="form-group">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" name="otraInfoAlergias" id="inputAddress" placeholder="Otra">
  </div> 
  <h4 class="card-title">Antecedentes Traumatologicos</h4>
  <div class="form-row">
   <div class="form-group col-md-6">
      <label for="inputCity">Esguince</label>
      <br>
      <input type="radio" name="esguince" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="esguince" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Fractura</label>
      <br>
      <input type="radio" name="fractura" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
      <input type="radio" name="fractura" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" name="otraInfoTraumatologica" id="inputAddress" placeholder="Otra">
  </div> 
   Esta tomando algun medicamento? 
<br/>
<input type="radio" name="tomaAlgunMedicamento" value="no" id="problema_01" onclick="mostrarReferencia();" required /> No
<input type="radio" name="tomaAlgunMedicamento" value="si" id="problema_10" onclick="mostrarReferencia();" required /> Si
<br/>
<br/>
<div>
Cual?
<textarea name="cualMedicamento" class="form-control" id="comment" placeholder="Ingresar Descripcion" rows="" cols=""></textarea>
<br>
</div>
  Sigue algun tratamiento? 
<br/>
<input type="radio" name="sigueAlgunTratamiento" value="no" id="problema_2" onclick="mostrarReferencia1();" required  /> No
<input type="radio" name="sigueAlgunTratamiento" value="si" id="problema_3" onclick="mostrarReferencia1();" required /> Si
<br/>
<br/>
<div>
Cual?
<textarea name="cualTratamiento" class="form-control" id="comment" placeholder="Ingresar Descripcion" rows="" cols=""></textarea>
<br>
</div>

 Tiene problemas de quemaduras por exposicion al sol? 
<br/>
<input type="radio" name="problemasDeQuemaduras" value="no" id="problema_2" onclick="mostrarReferencia1();" required /> No
<input type="radio" name="problemasDeQuemaduras" value="si" id="problema_3" onclick="mostrarReferencia1();" required /> Si
<br>
<br>
Regimen especial alimenticio (medico)?, Cual?
<textarea name="cualRegimenAlimenticio" class="form-control" id="comment" placeholder="Ingresar Descripcion" rows="" cols=""></textarea>
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