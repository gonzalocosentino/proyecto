<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.time.*" %>
   <%@ page import="java.time.format.DateTimeFormatter" %>
    <%@ page import="com.educacionit.entidades.Persona"%>
    <%@ page import="com.educacionit.entidades.Alumnos"%>
    <%@ page import="com.educacionit.BaseDeDatos.AlumnosDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registro Alumnos YCA</title>
<script src="http://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
 <style>
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
 </script>
</head>
<body data-spy="scroll" data-target="#navbar-example">
<%
if(session.getAttribute("mail") == null)
{
	response.sendRedirect("http://localhost:8080/com.EducacionIT/admin-entrenador");
}

String dbDriver="org.mariadb.jdbc.Driver";
String dbRoot="jdbc:mariadb://localhost:3306/informebote";
String dbUser="root";
String dbPw="";
Class.forName(dbDriver);
Connection con=DriverManager.getConnection(dbRoot,dbUser, dbPw);
PreparedStatement ps=null;
ResultSet rs=null;
String sql="SELECT * FROM alumno";
ps=con.prepareStatement(sql);
rs=ps.executeQuery();

Persona user=(Persona) session.getAttribute("user");

LocalDate ahora = LocalDate.now();



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
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#mostrarmodal" >- Alta Entrenador</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/listado-entrenadores">- Lista Entrenadores</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/informe-semanal/">- Informe Semanal Gomon</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/informe-general/">- Informe General Gomon</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/entrenadores/formulario-alumnos">- Formulario Alumnos</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/entrenadores/formulario-ficha-medica">- Formulario Ficha Medica</a>          
        </div>
      </li>
      <li class="nav-item">
        <form class="form-inline my-2 my-lg-0" action="/com.EducacionIT/admin-entrenador/registro-alumnos/" method="POST">
      <input class="form-control mr-sm-2" type="search" name="busqueda" id="filtrar" value="" onKeyUp="buscar();"  placeholder="Buscar Alumno" aria-label="Search">
      </form>
      </li>
    </ul>
    <div class="form-inline my-2 my-lg-0" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <%if(session.getAttribute("user") != null)
        	{
                out.print(user.getNombre().toUpperCase().charAt(0)+user.getNombre().substring(1)+" "+user.getApellido().toUpperCase().charAt(0)+user.getApellido().substring(1));
        	
        	}%>
         </a>
                
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
         <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenadores/login-entrenadores">- Cerrar Sesion</a>
        </div>         
      </li>
    </ul>
  </div>
  </div>
</nav>
<div class="scrollmenu">
<table class="table table-striped">
<thead>
<tr>
<th>Info</th>
<th>Nombre</th>
<th>Apellido</th>
<th>Dni</th>
<th>Fecha Nacimiento</th>
<th>Edad</th>
<th>Correo</th>
<th>Celular</th>
<th>Nº Socio</th>
<th>Nº Vela</th>
<th>Categoria</th>
<th>Editar</th>
</tr>
</thead>
<tbody class="buscar">
<%for(Alumnos alumnos:AlumnosDAO.getDatos())
{
	
%>
<tr>
<td><a href="/com.EducacionIT/admin-entrenador/view-info-alumno?datos=<% out.print(alumnos.getId());%>">Ver</a></td>
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
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/registro-alumnos/editar/categoria.jsp?datos=<%out.print(alumnos.getId()); %>" >- Categoria</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/registro-alumnos/editar/numero-vela.jsp?datos=<%out.print(alumnos.getId()); %>">- N Vela</a>
        </div>
      </li>
    </ul>
        </td>
  </tr>

<%} %>
</tbody>

</table>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>

</body>
</html>