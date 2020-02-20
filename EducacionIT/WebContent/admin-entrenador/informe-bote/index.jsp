<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></link>
  <style>
          .color2{background:#0AB1F4  ;}
          .slider{
          /* background: url("../img/Chivacola.jpg"); */
          /* Ocupara toda la altura disponible */
          height: 45vh;
        }
    .titulo
    {
      color:#1658C2 ;
    }
    .error
    {
      color:#F00F0F ;
    }
    .correcto
    {
      color:green;
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
</script>
</head>
<body>
<center>
<div class="container-fluid">
       <div class="row ">
                <div class="col-12 color2 slider ">
                <br>
                <br>
                <br>
                <br>
<form action="/com.EducacionIT/InsertarInformeBote" method="POST"  name="fcontacto">
 <div class="col-lg-6">
                    <div class="card w-auto" style="width: 50rem;">
                <div class="card-body">
                <div class="titulo">
                <h2>INFORME DE GOMON</h2>
                </div>
                <hr></hr>
                 <br>
<%
if(request.getAttribute("mensaje") != null)
{
%>
<div class="alert alert-danger" role="alert">
<%out.print("El correo no es correcto o no se encuentra registrado.");%>
</div>
<% 	
}
%>


<%
if(request.getAttribute("mensajecorrecto") !=null)
{
%>
<div class="alert alert-success" role="alert">
	<% out.print("Se envio correctamente el informe");%>
</div>
<%}%>

</br>
</br>
</br>
<input type="email" class="form-control" name="correo" placeholder="Ingresar Correo" required>
</br>
<select type="text" name="numerogomon" class="form-control" required>
<option value="">Seleccionar Gomon</option>
<option value="15">15</option>
<option value="16">16</option>
</select>
</br>
Tiene problemas el Gomon? 
</br>
<input type="radio" name="problema" value="no" id="problema_0" onclick="mostrarReferencia();" required /> No
<input type="radio" name="problema" value="si" id="problema_1" onclick="mostrarReferencia();" required /> Si
</br>
</br>
<div id="desdeotro" style="display:none;">
<select value="text" class="form-control" name="tipodeproblema">
<option value="">Seleccionar Tipo de Problema</option>
<option value="motor">MOTOR</option>
<option value="ponton">VHF</option>
<option value="ponton">FONDEO</option>
<option value="ponton">PONTON</option>
</select>
<br>
<textarea name="descripcion" class="form-control" id="comment" placeholder="Ingresar Descripcion" rows="" cols=""></textarea>
<br>
</div>
<button type="submit" class="btn btn-dark   btn btn-block" name="submit">Enviar</button>

</div>
</div>
</div>
</form>
</div>
</div>
</div>
</center>

</body>
</html>