<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
   <%@ page import="com.educacionit.BaseDeDatos.AdministradorDeConexion" %>
   <%@ page import="com.educacionit.entidades.Entrenador" %>
   <%@ page import="java.time.*" %>
   <%@ page import="java.time.format.DateTimeFormatter" %>
   <%@ page import="java.util.*" %>
   <%@ page import="com.educacionit.entidades.Alumnos" %>
   <%@ page import="com.educacionit.BaseDeDatos.AlumnosDAO" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registros Alumnos</title>
 <script src="http://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
<style type="text/css">
.overflow-visible {
  white-space: initial;
}


div.scrollmenu {

  overflow: auto;
  white-space: nowrap;
}

div.scrollmenu a:hover {
  color: red;
  
}
.coloruser
{
color:white;
}
</style>
   <script type="text/javascript">

function mostrarReferencia(){
//Si la opcion con id Conocido_1 (dentro del documento > formulario con name fcontacto >     y a la vez dentro del array de Conocido) esta activada
if (document.fcontacto.problema[1].checked == true) {
//muestra (cambiando la propiedad display del estilo) el div con id 'desdeotro'
document.getElementById('desdeotro').style.display='block';
//por el contrario, si no esta seleccionada
} else {
//oculta el div con id 'desdeotro'
document.getElementById('desdeotro').style.display='none';
}
}



	
$(document).ready(function () {
	 
    (function ($) {
 
        $('#filtrar').keyup(function () {
 
             var rex = new RegExp($(this).val(), 'i');
 
             $('.buscar tr').hide();
 
             $('.buscar tr').filter(function () {
               return rex.test($(this).text());
             }).show();
 
        })
 
    }(jQuery));
 
});

function myFunction()
{
	$("#mostrarmodal").modal("show");
}

</script>
</head>
<body  data-spy="scroll" data-target="#navbar-example">
<%
Entrenador user=(Entrenador) session.getAttribute("user");
if(session.getAttribute("mail")== null && session.getAttribute("user")== null)
{
	response.sendRedirect("http://localhost:8080/com.EducacionIT/entrenadores/login-entrenadores");
}else
{

Connection con=null;
con=AdministradorDeConexion.obtenerConexion();
PreparedStatement ps=null;
ResultSet rs=null;
String sql="SELECT * FROM alumno WHERE categoria = ?";
ps=con.prepareStatement(sql);
ps.setString(1, user.getCategoria());
rs=ps.executeQuery();
%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">YCA</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Menu
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#mostrarmodal"  >- Enviar Informe Bote</a>
          <a class="dropdown-item" href="/com.EducacionIT/entrenadores/formulario-alumnos" >- Formulario Alumno</a>
          <a class="dropdown-item" href="/com.EducacionIT/entrenadores/formulario-ficha-medica" >- Formulario Ficha Medica</a>          
        </div>
      </li>
      <li class="nav-item">
        <form class="form-inline my-2 my-lg-0" action="/com.EducacionIT/registros-alumnos/" method="POST">
      <input class="form-control mr-sm-2" type="search" name="busqueda" id="filtrar" value="" onKeyUp="buscar();"  placeholder="Buscar Alumno" aria-label="Search">
      </form>
      </li>
    </ul>
    <div class="form-inline my-2 my-lg-0" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Hola <% if(session.getAttribute("user") !=null)
         {
        	 out.print(user.getNombre().toUpperCase().charAt(0)+user.getNombre().substring(1)+ " " +user.getApellido().toUpperCase().charAt(0)+user.getApellido().substring(1));
         }
        	
          %>
         </a>
                
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/entrenadores/login-entrenadores">- Cerrar Sesion</a>
        </div>
         
      </li>
    </ul>
  </div>
  </div>
</nav>
<div class="scrollmenu">
<table class="table table-striped" >
 <thead >
   <tr>
    <th scope="col">INFO</th>
    <th scope="col">NOMBRE</th>
    <th scope="col">APELLIDO</th>
    <th scope="col">DNI</th>
    <th scope="col">F NACIMIENTO</th>
    <th scope="col">EDAD</th>
    <th scope="col">MAIL</th>
    <th scope="col">CELULAR</th>
    <th scope="col">Nº SOCIO</th>
    <th scope="col">Nº VELA</th>
    <th scope="col">CATEGORIA</th> 
    <th>EDITAR</th>    
   </tr> 
 </thead>
<tbody class="buscar" >
 <% 
 for(Alumnos alumnos:AlumnosDAO.getDatos())
 {
	if(alumnos.getCategoria().equals(user.getCategoria()))
	{
 %>
 <tr>
 <td><a href="/com.EducacionIT/entrenadores/visualizar-informacion?datos=<% out.print(alumnos.getId());%>">Ver</a></td>
<td><%out.print(alumnos.getNombre()); %></td>
<td><%out.print(alumnos.getApellido()); %></td>
<td><%out.print(alumnos.getDni()); %></td>
<td><%out.print(alumnos.getFechaNacimientoDia()+"-"+alumnos.getFechaNacimientoMes()+"-"+alumnos.getFechaNacimientoAnio()); %></td>
<td><%
	out.print(alumnos.getEdad());
%></td>
<td><%out.print(alumnos.getCorreo()); %></td>
<td><%out.print(alumnos.getCelular()); %></td>
<td><%out.print(alumnos.getNumeroSocio()); %></td>
<td><%out.print(alumnos.getNumeroDeVela()); %></td>
<td><%out.print(alumnos.getCategoria()); %></td>
 <td>
 <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Editar
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/entrenadores/registros-alumnos/editar/categoria.jsp?datos=<%out.print(alumnos.getId()); %>" >- Categoria</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/entrenadores/registros-alumnos/editar/numero-de-vela.jsp?datos=<% out.print(alumnos.getId()); %>">- N Vela</a>
        </div>
      </li>
    </ul>
 </td>
 </tr>  
 <%} %> 
 <%} %>
</tbody>
</table>
</div>



<div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
      <div class="modal-dialog" role="document" >
        <div class="modal-content">
           <div class="modal-header">
                     
 <center><h5 class="modal-title" id="exampleModalLabel">Insertar Informe De Gomon</h5></center>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
          </div>
           
           <div class="modal-body">
 <form action="/com.EducacionIT/InsertarInformeBote" method="POST"  name="fcontacto">
 <%
if(request.getAttribute("mensajecorrecto") !=null)
{
%>
<div class="alert alert-success" role="alert">
	<% out.print("Se envio correctamente el informe");%>
</div>
<%}%>
<br/>
<select type="text" name="numerogomon" class="form-control" required>
<option value="">Seleccionar Gomon</option>
<option value="15">15</option>
<option value="16">16</option>
</select>
<br/>
Tiene problemas el Gomon? 
<br/>
<input type="radio" name="problema" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
<input type="radio" name="problema" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
<br/>
<br/>
<div id="desdeotro" style="display:none;">
<select type="text" class="form-control" name="tipodeproblema">
<option value="">Seleccionar Tipo de Problema</option>
<option value="motor">Motor</option>
<option value="ponton">Vhf</option>
<option value="ponton">Fondeo</option>
<option value="ponton">Ponton</option>
</select>
<br>
<textarea name="descripcion" class="form-control" id="comment" placeholder="Ingresar Descripcion" rows="" cols=""></textarea>
<br>
</div>
<button type="submit" class="btn btn-dark   btn btn-block" name="submit"  onclick="myFunction()"  id="windoname" >Enviar</button>
</form>
       </div>
       
       
           <div class="modal-footer">
           </div>
         
      </div>
   </div>
</div>
<%} %>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>


</body>

</html>

