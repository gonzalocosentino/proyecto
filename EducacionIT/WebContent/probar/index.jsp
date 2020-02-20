<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.*" %>
   <%@ page import="java.time.*" %>
   <%@ page import="java.time.format.DateTimeFormatter" %>
   <%@ page import="com.educacionit.BaseDeDatos.AdministradorDeConexion" %>
   <%@ page import="com.educacionit.entidades.Entrenador" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registros Alumnos</title>
 <script src="http://code.jquery.com/jquery-2.1.4.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"></script>
        <!-- añadir jQuery-UI -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
     
</head>
<body >

<%

DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy-MM-dd");
LocalDate fechaNac = LocalDate.parse("2001-02-18", fmt);
LocalDate ahora = LocalDate.now();

Period periodo = Period.between(fechaNac, ahora);
out.print(("Tu edad es:"+ periodo.getYears()));

%>

</body>
<!-- Crear una lista con id="milista" -->
        <ol id="milista">
            <li >Almería</li>
            <li >Cádiz</li>
            <li >Córdoba</li>
            <li >Granada</li>
            <li >Huelva</li>
            <li >Jaén</li>
            <li >Málaga</li>
            <li >Sevilla</li>
        </ol>
         
        <script>
            $(document).ready(function(){
                //Aplicar la función sortable a la lista con id milista
                $( "#milista" ).sortable({});
            });
        </script>
</html>