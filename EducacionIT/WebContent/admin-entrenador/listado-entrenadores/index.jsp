<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.lang.String" %>
    <%@ page import="java.util.*" %>
    <%@ page import="java.text.ParseException" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    <%@ page import="com.educacionit.entidades.Persona" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listado Entrenadores</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>

<style>

.overflow-visible {
  white-space: initial;
}

.example {
   overflow-wrap: break-word;
  word-wrap: break-word;
  hyphens: auto;
}

div.scrollmenu {

  overflow: auto;
  white-space: nowrap;
}

.fecharoja
{
  color:red;
}
.fechaverde
{
color:green;
}

</style>
<script>
      $(document).ready(function()
      {
         $("#mostrarmodal").modal("show");
      });
    </script>
</head>
<body>
<%
if(session.getAttribute("mail") ==null)
{
	response.sendRedirect("http://localhost:8080/com.EducacionIT/admin-entrenador");
}
Persona user=(Persona) session.getAttribute("user");
Calendar ahora= Calendar.getInstance();
int anio=ahora.get(Calendar.YEAR);
int mes=ahora.get(Calendar.MONTH)+1;
int dia=ahora.get(Calendar.DATE);
String dbDriver="org.mariadb.jdbc.Driver";
String dbRoot="jdbc:mariadb://localhost:3306/informebote";
String dbUser="root";
String dbPw="";
Class.forName(dbDriver);
Connection con=DriverManager.getConnection(dbRoot,dbUser,dbPw);
String sql="SELECT * FROM persona";
PreparedStatement ps=null;
ResultSet rs=null;
ps=con.prepareStatement(sql);
rs=ps.executeQuery();
String fecha=anio+"-"+mes+"-"+dia;
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
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/registro-alumnos/">- Alumnos</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/informe-semanal/">- Informe Semanal</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/informe-general/">- Informe General Gomon</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/informe-bote">- Form Informe Gomon</a>
          <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador/listado-entrenadores">- Lista Entrenadores</a>
        </div>
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
         <a class="dropdown-item" href="http://localhost:8080/com.EducacionIT/admin-entrenador">- Cerrar Sesion</a>
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
<th>NOMBRE</th>
<th>APELLIDO</th>
<th>FECHA NACIMIENTO</th>
<th>CORREO</th>
<th>DNI</th>
<th>CATEGORIA</th>
<th>EXPIRACION CARNET</th>
<th>EDITAR</th>

</tr>
</thead>
<tbody>
<% while(rs.next())
{%>
  <tr>
    <td><%= rs.getString("nombre") %></td>
    <td><%= rs.getString("apellido") %></td>
    <td><%= rs.getString("fecha_nacimiento") %></td>
    <td><%= rs.getString("correo") %></td>
    <td><%= rs.getString("dni") %></td>
    <td><%= rs.getString("categoria") %></td>
    <%
    
    
    if(rs.getString("fechaexpiracioncarnet").equals(fecha))
    {
     %>
    <td><strong><p class="fecharoja"><%
    
    
    out.print(rs.getString("fechaexpiracioncarnet")); 
    
    %></p></strong></td><%
    }else
    	{ %>
    	<td><strong><p class="fechaverde"><%= rs.getString("fechaexpiracioncarnet") %></p></strong></td>
    	<%} %>
    <td><a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Editar
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/com.EducacionIT/admin-entrenador/listado-entrenadores/editarcorreo.jsp?IdCliente=<%=rs.getString("id_persona")  %>">- Correo</a>
          <a class="dropdown-item" href="/com.EducacionIT/admin-entrenador/listado-entrenadores/editarfechacarnet.jsp?IdCliente=<%=rs.getString("id_persona")%>">- Expiracion Carnet</a>
          <a class="dropdown-item" href="/com.EducacionIT/admin-entrenador/listado-entrenadores/editarpassword.jsp?IdCliente=<%=rs.getString("id_persona")%>">- Contraseña</a>
          <a class="dropdown-item" href="/com.EducacionIT/admin-entrenador/listado-entrenadores/EditarCategoria.jsp?IdCliente=<%=rs.getString("id_persona")%>">- Categoria</a>
          <a class="dropdown-item" href="/com.EducacionIT/DeletEntrenador?IdCliente=<%=rs.getString("id_persona")  %>">- Borrar</a>
        </div>
        
        </td>
  </tr>

<%} %>
</tbody>

</table>
</div>



<div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
      <div class="modal-dialog" role="document" >
        <div class="modal-content">
           <div class="modal-header">
                     
 <center><h5 class="modal-title" id="exampleModalLabel">Insertar Entrenador</h5></center>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
          </div>
           
           <div class="modal-body">
          <form action="/com.EducacionIT/InsertarEntrenador" method="POST" >
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Nombre</span>
    </div>
    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" onblur="revisar(this)" onkeyup="revisar(this)" Id="nombre" required name="nombre">
  </div>
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Aepllido</span>
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
      <span class="input-group-text" id="inputGroup-sizing-sm">Celular</span>
    </div>
    <input type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="correo" required name="celular">
  </div>
<div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Fecha Nacimiento</span>
    </div>
    <input type="date" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="fecha" required name="fechanacimiento">
  </div>
  <div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Categoria</span>
    </div>
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
<option value="cordinador">Coordinador</option>
</select>
  </div>
  <div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Fecha Expiracion Carnet </span>
    </div>
    <input type="date" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="fecha" required name="fechaexpiracioncarnet">
  </div>
  <div class="input-group input-group-sm  mb-3">
    <div class="input-group-prepend">
      <span class="input-group-text" id="inputGroup-sizing-sm">Contraseña </span>
    </div>
    <input type="password" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" Id="password" required name="password">
  </div>
<button type="submit" class="btn btn-dark   btn btn-block">Enviar</button>

       </div>
       
       
           <div class="modal-footer">

         


           </div>
           </center>
      </div>
   </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>

</body>

</html>





