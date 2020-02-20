<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualizar Informacion</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
</head>
<body>
<%
if(session.getAttribute("mail") == null)
{

	response.sendRedirect("http://localhost:8080/com.EducacionIT/entrenadores/login-entrenadores");
}

String dbDriver="org.mariadb.jdbc.Driver";
String dbRoot="jdbc:mariadb://localhost:3306/informebote";
String dbUser="root";
String dbPw="";
Class.forName(dbDriver);
Connection con=DriverManager.getConnection(dbRoot,dbUser, dbPw);
PreparedStatement ps=null;
ResultSet rs=null;
String sql="SELECT alumno.*,fichamedica.* FROM alumno LEFT JOIN fichamedica ON alumno.dni=fichamedica.dni WHERE id_alumno=? ";
ps=con.prepareStatement(sql);
ps.setString(1,request.getParameter("datos"));
rs=ps.executeQuery();

%>
<div class="container-fluid">
       <div class="row ">
       <div class="col-lg-12">
       <br>
<div class="card w-auto" style="width: 50rem;">
<div class="card-body">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Datos Padre</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">Datos Madre</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Ficha Medica</a>
  </li>
</ul>
 <%
  if(rs.next())
  {
  %>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  <br/>
  <p><strong>Nombre: </strong><%=rs.getString("nombre_padre").toUpperCase().charAt(0)+rs.getString("nombre_padre").substring(1)%></p>
  <p><strong>Apellido: </strong><%=rs.getString("apellido_padre").toUpperCase().charAt(0)+rs.getString("apellido_padre").substring(1) %></p>
  <p><strong>Celular: </strong><a href="tel:<%=rs.getString("celular_padre") %>" ><%=rs.getString("celular_padre") %></a></p>
  <p><strong>Mail: </strong><a href="mailto:<%=rs.getString("mail_padre") %>"><%=rs.getString("mail_padre") %></a></p>
  
  </div>
  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
  <br/>
  <p><strong>Nombre: </strong><%=rs.getString("nombre_madre").toUpperCase().charAt(0)+rs.getString("nombre_madre").substring(1) %></p>  
  <p><strong>Apellido: </strong><%=rs.getString("apellido_madre").toUpperCase().charAt(0)+rs.getString("apellido_madre").substring(1) %></p>
  <p><strong>Celular: </strong><a href="tel:<%=rs.getString("celular_madre") %>"><%=rs.getString("celular_madre") %></a></p>
  <p><strong>Mail: </strong><a href="mailto:<%=rs.getString("mail_madre")%>"><%=rs.getString("mail_madre") %> </a></p> 
  </div>  
    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
  <br>
<%if(rs.getString("grupo_sanguineo") == null)
{%>
<div class="alert alert-danger" role="alert">
  Falta completar la ficha medica
</div>
<a href="http://localhost:8080/com.EducacionIT/entrenadores/formulario-ficha-medica/" > Link ficha medica </a>
<%}else
{
%>
<div class="container-fluid">
       <div class="row ">
       <div class="col-lg-12">
       <br>
       <div class="card">
  <div class="card-header">
    <center>Datos Filiatorios</center>
  </div>
  <div class="card-body">
  <div class="form-row">
   <div class="form-group col-md-6">
   
      <label for="inputEmail4">Nombre</label>
      <input type="text" class="form-control" value="<%=rs.getString("nombre").toUpperCase().charAt(0)+rs.getString("nombre").substring(1)%>" id="inputEmail4" placeholder="Nombre" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido</label>
      <input type="text" class="form-control" value="<%=rs.getString("apellido").toUpperCase().charAt(0)+rs.getString("apellido").substring(1) %>" id="inputPassword4" placeholder="Apellido" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">D.N.I</label>
      <input type="number" class="form-control" value="<%=rs.getInt("dni")%>" id="inputEmail4" placeholder="D.N.I" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Fecha de Nacimiento</label>
      <input type="date" class="form-control" value="<%=rs.getString("fecha_nacimiento") %>" id="inputPassword4" placeholder="" readonly>
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">Obra Social</label>
      <input type="text" class="form-control" value="<%=rs.getString("obra_social") %>" id="inputEmail4" placeholder="Obra Social" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">N Afiliado</label>
      <input type="text" class="form-control" value="<%=rs.getString("numero_afiliado")%>" name="numeroAfiliado" placeholder="N Afiliado" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Grupo Sangu�neo</label>
      <input type="text" class="form-control" id="inputEmail4" value="<%=rs.getString("grupo_sanguineo") %>" readonly>
    </div>    
    <div class="form-group col-md-6">
      <label for="inputEmail4">Factor</label>
      <input type="text" class="form-control" id="inputEmail4" value="<%=rs.getString("factor") %>" readonly >
    </div>	
  </div>
  <div class="form-group">
    <label for="inputAddress">Nombre del Padre, tutor o encargado </label>
    <input type="text" class="form-control" id="inputAddress" value="<%=rs.getString("nombre_tutor")    %>" readonly>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Domicilio</label>
      <input type="text" class="form-control" id="inputCity" value="<%=rs.getString("domicilio") %>" readonly >
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Telefono</label>
      <input type="number" class="form-control" id="inputCity" value="<%=rs.getString("telefono")%>" readonly >
    </div>
    </div>
    <h5 class="card-title">En caso de necesidad informar al Sr./a:</h5>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Nombre</label>
      <input type="text" class="form-control" id="inputCity" value="<%=rs.getString("nombre_emergencia")%>" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Apellido</label>
      <input type="text" class="form-control" id="inputCity" value="<%=rs.getString("apellido_emergencia")%>" readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Domicilio</label>
      <input type="text" class="form-control" id="inputCity" value="<%=rs.getString("domicilio_emergencia") %>"  readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Telefono</label>
      <input type="number" class="form-control" id="inputCity" value="<%=rs.getString("telefono_emergencia") %>"  readonly>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Celular</label>
      <input type="number" class="form-control" id="inputCity" value="<%=rs.getString("celular_emergencia") %>" readonly >
    </div>
  </div>
  <hr></hr>
  <center><h4>Historia Cl�nica</h4></center>
  <hr></hr>
  <center><h4 class="card-title">Enfermedades padecientes hasta la fecha</h4></center>
  <center>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Sarampi�n</label>
      <br>
      <strong><%=rs.getString("sarampion").toUpperCase().charAt(0)+rs.getString("sarampion").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Hepatitis (tipo)</label>
      <br>
     <strong> <%=rs.getString("hepatitis").toUpperCase().charAt(0)+rs.getString("hepatitis").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Paperas</label>
      <br>
     <strong><%=rs.getString("paperas").toUpperCase().charAt(0)+rs.getString("paperas").substring(1) %></strong>
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputCity">Poliomelitis</label>
      <br>
    <strong> <%=rs.getString("poliomelitis").toUpperCase().charAt(0)+rs.getString("poliomelitis").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Tos Convulsa</label>
      <br>
    <strong><%=rs.getString("tos_convulsa").toUpperCase().charAt(0)+rs.getString("tos_convulsa").substring(1) %></strong>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Varicela</label>
      <br>
   <strong><%=rs.getString("varicela").toUpperCase().charAt(0)+rs.getString("varicela").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Escarlatina</label>
      <br>
   <strong><%=rs.getString("escarlatina").toUpperCase().charAt(0)+rs.getString("escarlatina").substring(1) %></strong>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">5ta. Eruptiva</label>
      <br>
   <strong><%=rs.getString("eruptiva").toUpperCase().charAt(0)+rs.getString("eruptiva").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Rub�ola</label>
      <br>
 <strong><%=rs.getString("rubeola").toUpperCase().charAt(0)+rs.getString("rubeola").substring(1) %></strong>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Epilepsia</label>
      <br>
  <strong><%=rs.getString("epilepsia").toUpperCase().charAt(0)+rs.getString("epilepsia").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Sinusitis</label>
      <br>
  <strong><%=rs.getString("sinusitis").toUpperCase().charAt(0)+rs.getString("sinusitis").substring(1) %></strong>
    </div>
</div>
<div class="form-group col-md-8">
    <label for="inputAddress">Otra </label>
    <br>
    <strong><%=rs.getString("otraInfo") %> </strong>
  </div>
</center>


 <center><h4 class="card-title">Enfermedades que padece o a la que es propenso</h4></center>
  <center>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Asma</label>
      <br>
    <strong><%=rs.getString("asma").toUpperCase().charAt(0)+rs.getString("asma").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Bronquitis</label>
      <br>
<strong><%=rs.getString("bronquitis").toUpperCase().charAt(0)+rs.getString("bronquitis").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Resfr�o</label>
      <br>
    <strong><%=rs.getString("resfrio").toUpperCase().charAt(0)+rs.getString("resfrio").substring(1) %></strong>
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputCity">Afecciones del o�do</label>
      <br>
  <strong><%=rs.getString("afecciones_oido").toUpperCase().charAt(0)+rs.getString("afecciones_oido").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Afecciones de nariz</label>
      <br>
   <strong><%=rs.getString("afecciones_nariz").toUpperCase().charAt(0)+rs.getString("afecciones_nariz").substring(1) %></strong>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Afecciones del ojo</label>
      <br>
   <strong><%=rs.getString("afecciones_ojo").toUpperCase().charAt(0)+rs.getString("afecciones_ojo").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Convulsiones</label>
      <br>
    <strong><%=rs.getString("convulsiones").toUpperCase().charAt(0)+rs.getString("convulsiones").substring(1) %></strong>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Sonambulismo</label>
      <br>
   <strong><%=rs.getString("sonambulismo").toUpperCase().charAt(0)+rs.getString("sonambulismo").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Desmayos</label>
      <br>
<strong><%=rs.getString("desmayo").toUpperCase().charAt(0)+rs.getString("desmayo").substring(1) %></strong>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Constipaci�n</label>
      <br>
 <strong><%=rs.getString("constipacion").toUpperCase().charAt(0)+rs.getString("bronquitis").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">HIV</label>
      <br>
     <strong><%=rs.getString("hiv").toUpperCase().charAt(0)+rs.getString("hiv").substring(1)%></strong>
    </div> 
</div>
<div class="form-group col-md-8">
    <label for="inputAddress">Otra </label>
    <br>
     <strong><%=rs.getString("otraInfoPropenso")%></strong>
  </div>
</center>
<h4 class="card-title">Vacunas o sueros recibidos (ultima fecha)</h4>
<div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antitet�nica</label>
      <input type="date" class="form-control" value="<%=rs.getString("antitetanica") %>" readonly >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Antidift�rica</label>
      <input type="date" class="form-control" value="<%=rs.getString("antidiferica")%>" readonly >
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">Antivari�lica</label>
      <input type="date" class="form-control" value="<%=rs.getString("antivariolica")%>" readonly >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Antipoliomiel�tica</label>
      <input type="date" class="form-control" value="<%=rs.getString("antipoliomielitica")%>" readonly >
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antituberculosa</label>
      <input type="date" class="form-control" value="<%=rs.getString("antituberculosa")%>" readonly >
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antiof�dica</label>
      <input type="date" class="form-control" value="<%=rs.getString("antiofidica")%>" readonly >
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Antit�fidica</label>
      <input type="date" class="form-control" value="<%=rs.getString("antitifidica")%>" readonly >
    </div>   
  </div>
    <h4 class="card-title">Intervenciones Quir�rgicas</h4>
  <div class="form-row">
   <div class="form-group col-md-6">
      <label for="inputCity">Apendicitis</label>
      <br>
     <strong><%=rs.getString("apendicitis").toUpperCase().charAt(0)+rs.getString("apendicitis").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Amigdalitis</label>
      <br>
     <strong><%=rs.getString("amigdalitis").toUpperCase().charAt(0)+rs.getString("amigdalitis").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Hernia</label>
      <br>
 <strong><%=rs.getString("hernia").toUpperCase().charAt(0)+rs.getString("hernia").substring(1) %></strong>
    </div>    
    </div>  
  <div class="form-group">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" value="<%=rs.getString("otraInfoQuirurgica")%>" readonly >
  </div>  
    <h4 class="card-title">Es al�rgico a:</h4>
   <div class="form-row">
   <div class="form-group col-md-6">
      <label for="inputCity">Comida</label>
      <br>
     <strong><%=rs.getString("comida").toUpperCase().charAt(0)+rs.getString("comida").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Medicamentos</label>
      <br>
   <strong><%=rs.getString("medicamentos").toUpperCase().charAt(0)+rs.getString("medicamentos").substring(1) %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Antibi�ticos</label>
      <br>
<strong><%=rs.getString("antibioticos").toUpperCase().charAt(0)+rs.getString("antibioticos").substring(1) %></strong>
    </div> 
    <div class="form-group col-md-6">
      <label for="inputCity">Picadura de insectos</label>
      <br>
   <strong><%=rs.getString("picaduraInsectos").toUpperCase().charAt(0)+rs.getString("picaduraInsectos").substring(1) %></strong>
    </div> 
    <div class="form-group col-md-6">
      <label for="inputCity">Polvo, Polen</label>
      <br>
<strong><%=rs.getString("polen").toUpperCase().charAt(0)+rs.getString("polen").substring(1) %></strong>
    </div>
    <div class="form-group col-md-6">
      <label for="inputCity">Plumas</label>
      <br>
  <strong><%=rs.getString("plumas").toUpperCase().charAt(0)+rs.getString("plumas").substring(1) %></strong>
    </div>     
    </div> 
     <div class="form-group">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" value="<%=rs.getString("otraInfoAlergias") %>" readonly >
  </div> 
  
    <h4 class="card-title">Antecedentes Traumatol�gicos</h4>
  <div class="form-row">
   <div class="form-group col-md-6">
      <label for="inputCity">Esguince</label>
      <br>
  <strong><%=rs.getString("esguince") %></strong>
    </div>
     <div class="form-group col-md-6">
      <label for="inputCity">Fractura</label>
      <br>
 <strong><%=rs.getString("fractura") %></strong>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Otra </label>
    <input type="text" class="form-control" value="<%=rs.getString("otraInfoTraumatologica")%>" readonly >
  </div> 

<p>�Est� tomando alg�n medicamento?
<br>
<strong><%=rs.getString("tomaAlgunMedicamento") %></strong>
</p> 
<div>
<p>�Cu�l?</p>
<textarea  class="form-control" value="<%=rs.getString("cualMedicamento")%>" readonly ></textarea>
<br>
</div>    

<p>�Sigue alg�n tratamiento?
<br>
<strong><%=rs.getString("sigueAlgunTratamiento").toUpperCase().charAt(0)+rs.getString("sigueAlgunTratamiento").substring(1) %></strong>
</p> 
 <div>
<p>�Cu�l?</p>
<textarea  class="form-control" value="<%=rs.getString("cualTratamiento")%>" readonly ></textarea>
<br>
</div>   

 <p>�Tiene problemas de quemaduras por exposici�n al sol? 
 <br>
<strong><%=rs.getString("problemaDeQuemaduras").toUpperCase().charAt(0)+rs.getString("problemaDeQuemaduras").substring(1) %></strong>
</p> 
<p>�Regimen especial alimenticio (medico)?, Cu�l?</p>
<textarea  class="form-control" value="<%=rs.getString("cualRegimenAlimenticio")%>" readonly ></textarea>
<br>

    
  </div>
  </div>
  </div>
       </div>
       </div>
       </div>
<%} %>



</div>  
<%} %>  
  </div>
 
</div>
</div>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>

</body>

</html>