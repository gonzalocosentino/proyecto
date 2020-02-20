<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guardar Alumnos</title>
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
  <div class="titulo">
    <center><h5 class="card-title">Datos Alumno</h5></center>
    </div>
    <hr></hr>
<form action="/com.EducacionIT/InsertarAlumnos" method="POST"  >

   
  
   <% if(request.getAttribute("correcto") !=null)
                 {
                %>	 
                    <div class="alert alert-success" role="alert">
	<% out.print("Se envio correctamente los datos");%>
</div>
                <%}%>
                <h6>Datos obligatorios (*)</h6>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nombre*</label>
      <input type="text" class="form-control" id="inputEmail4" name="nombre" placeholder="Nombre">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido*</label>
      <input type="text" class="form-control" id="inputPassword4" name="apellido" placeholder="Apellido">
    </div>
    </div>
     <div class="form-group">
      <label for="inputEmail4">D.N.I*</label>
      <input type="text" class="form-control" id="inputEmail4" name="dni" placeholder="D.N.I" maxlength="8">
    </div>
    <label for="inputPassword4">Fecha De Nacimiento*</label>
    <div class="form-row">
    <div class="form-group col-md-3">
      <select type="text" class="form-control" name="fechaNacimientoDia" required>
<option value="">Dia</option>
<option value="01">1</option>
<option value="02">2</option>
<option value="03">3</option>
<option value="04">4</option>
<option value="05">5</option>
<option value="06">6</option>
<option value="07">7</option>
<option value="08">8</option>
<option value="09">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>
    </div>
    <div class="form-group col-md-3">
    <select type="text" class="form-control" name="fechaNacimientoMes" required>
<option value="">Mes</option>
<option value="01">Enero</option>
<option value="02">Febero</option>
<option value="03">Marzo</option>
<option value="04">Abril</option>
<option value="05">Mayo</option>
<option value="06">Junio</option>
<option value="07">Julio</option>
<option value="08">Agosto</option>
<option value="09">Septiembre</option>
<option value="10">Octubre</option>
<option value="11">Noviembre</option>
<option value="12">Diciembre</option>
</select>
    </div>
    <div class="form-group col-md-3">
       <select type="text" class="form-control" name="fechaNacimientoAnio" required>
 <option class="attribute-list-option" value="">Año</option>
 <option class="attribute-list-option" value="2020">2020</option>
 <option class="attribute-list-option" value="2019">2019</option>
  <option class="attribute-list-option" value="2018">2018</option>
  <option class="attribute-list-option" value="2017">2017</option>
  <option class="attribute-list-option" value="2016">2016</option>
  <option class="attribute-list-option" value="2015">2015</option>
  <option class="attribute-list-option" value="2014">2014</option>
  <option class="attribute-list-option" value="2013">2013</option>
  <option class="attribute-list-option" value="2012">2012</option>
  <option class="attribute-list-option" value="2011">2011</option>
  <option class="attribute-list-option" value="2010">2010</option>
  <option class="attribute-list-option" value="2009">2009</option>
  <option class="attribute-list-option" value="2008">2008</option>
  <option class="attribute-list-option" value="2007">2007</option>
  <option class="attribute-list-option" value="2006">2006</option>
  <option class="attribute-list-option" value="2005">2005</option>
  <option class="attribute-list-option" value="2004">2004</option>
  <option class="attribute-list-option" value="2003">2003</option>
  <option class="attribute-list-option" value="2002">2002</option>
  <option class="attribute-list-option" value="2001">2001</option>
  <option class="attribute-list-option" value="2000">2000</option>
  <option class="attribute-list-option" value="1999">1999</option>
  <option class="attribute-list-option" value="1998">1998</option>
  <option class="attribute-list-option" value="1997">1997</option>
  <option class="attribute-list-option" value="1996">1996</option>
  <option class="attribute-list-option" value="1995">1995</option>
  <option class="attribute-list-option" value="1994">1994</option>
  <option class="attribute-list-option" value="1993">1993</option>
  <option class="attribute-list-option" value="1992">1992</option>
  <option class="attribute-list-option" value="1991">1991</option>
  <option class="attribute-list-option" value="1990">1990</option>
  <option class="attribute-list-option" value="1989">1989</option>
  <option class="attribute-list-option" value="1988">1988</option>
  <option class="attribute-list-option" value="1987">1987</option>
  <option class="attribute-list-option" value="1986">1986</option>
  <option class="attribute-list-option" value="1985">1985</option>
  <option class="attribute-list-option" value="1984">1984</option>
  <option class="attribute-list-option" value="1983">1983</option>
  <option class="attribute-list-option" value="1982">1982</option>
  <option class="attribute-list-option" value="1981">1981</option>
  <option class="attribute-list-option" value="1980">1980</option>
  <option class="attribute-list-option" value="1979">1979</option>
  <option class="attribute-list-option" value="1978">1978</option>
  <option class="attribute-list-option" value="1977">1977</option>
  <option class="attribute-list-option" value="1976">1976</option>
  <option class="attribute-list-option" value="1975">1975</option>
  <option class="attribute-list-option" value="1974">1974</option>
  <option class="attribute-list-option" value="1973">1973</option>
  <option class="attribute-list-option" value="1972">1972</option>
  <option class="attribute-list-option" value="1971">1971</option>
  <option class="attribute-list-option" value="1970">1970</option>
  <option class="attribute-list-option" value="1969">1969</option>
  <option class="attribute-list-option" value="1968">1968</option>
  <option class="attribute-list-option" value="1967">1967</option>
  <option class="attribute-list-option" value="1966">1966</option>
  <option class="attribute-list-option" value="1965">1965</option>
  <option class="attribute-list-option" value="1964">1964</option>
  <option class="attribute-list-option" value="1963">1963</option>
  <option class="attribute-list-option" value="1962">1962</option>
  <option class="attribute-list-option" value="1961">1961</option>
  <option class="attribute-list-option" value="1960">1960</option>
  <option class="attribute-list-option" value="1959">1959</option>
  <option class="attribute-list-option" value="1958">1958</option>
  <option class="attribute-list-option" value="1957">1957</option>
  <option class="attribute-list-option" value="1956">1956</option>
  <option class="attribute-list-option" value="1955">1955</option>
  <option class="attribute-list-option" value="1954">1954</option>
  <option class="attribute-list-option" value="1953">1953</option>
  <option class="attribute-list-option" value="1952">1952</option>
  <option class="attribute-list-option" value="1951">1951</option>
  <option class="attribute-list-option" value="1950">1950</option>
  <option class="attribute-list-option" value="1949">1949</option>
  <option class="attribute-list-option" value="1948">1948</option>
  <option class="attribute-list-option" value="1947">1947</option>
  <option class="attribute-list-option" value="1946">1946</option>
  <option class="attribute-list-option" value="1945">1945</option>
  <option class="attribute-list-option" value="1944">1944</option>
  <option class="attribute-list-option" value="1943">1943</option>
  <option class="attribute-list-option" value="1942">1942</option>
  <option class="attribute-list-option" value="1941">1941</option>
  <option class="attribute-list-option" value="1940">1940</option>
  <option class="attribute-list-option" value="1939">1939</option>
  <option class="attribute-list-option" value="1938">1938</option>
  <option class="attribute-list-option" value="1937">1937</option>
  <option class="attribute-list-option" value="1936">1936</option>
  <option class="attribute-list-option" value="1935">1935</option>
  <option class="attribute-list-option" value="1934">1934</option>
  <option class="attribute-list-option" value="1933">1933</option>
  <option class="attribute-list-option" value="1932">1932</option>
  <option class="attribute-list-option" value="1931">1931</option>
  <option class="attribute-list-option" value="1930">1930</option>
  <option class="attribute-list-option" value="1929">1929</option>
  <option class="attribute-list-option" value="1928">1928</option>
  <option class="attribute-list-option" value="1927">1927</option>
  <option class="attribute-list-option" value="1926">1926</option>
  <option class="attribute-list-option" value="1925">1925</option>
  <option class="attribute-list-option" value="1924">1924</option>
  <option class="attribute-list-option" value="1923">1923</option>
  <option class="attribute-list-option" value="1922">1922</option>
  <option class="attribute-list-option" value="1921">1921</option>
  <option class="attribute-list-option" value="1920">1920</option>
  <option class="attribute-list-option" value="1919">1919</option>
  <option class="attribute-list-option" value="1918">1918</option>
  <option class="attribute-list-option" value="1917">1917</option>
  <option class="attribute-list-option" value="1916">1916</option>
  <option class="attribute-list-option" value="1915">1915</option>
  <option class="attribute-list-option" value="1914">1914</option>
  <option class="attribute-list-option" value="1913">1913</option>
  <option class="attribute-list-option" value="1912">1912</option>
  <option class="attribute-list-option" value="1911">1911</option>
  <option class="attribute-list-option" value="1910">1910</option>
  <option class="attribute-list-option" value="1909">1909</option>
  <option class="attribute-list-option" value="1908">1908</option>
  <option class="attribute-list-option" value="1907">1907</option>
  <option class="attribute-list-option" value="1906">1906</option>
  <option class="attribute-list-option" value="1905">1905</option>
</select>    
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Correo</label>
      <input type="email" class="form-control" id="inputEmail4" name="mail" placeholder="Correo">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Celular</label>
      <input type="number" class="form-control" id="inputEmail4" name="celular" placeholder="Celular">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Socio</label>
      <input type="text" class="form-control" id="inputEmail4" name="numero_socio" placeholder="Nº De Socio">
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Vela</label>
      <input type="text" class="form-control" id="inputEmail4" name="numero_de_vela" placeholder="Numero De Vela">
    </div>	
  </div>
  <label for="inputEmail4">Seleccionar Categoria*</label>
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
  <div class="titulo">
    <center><h5 class="card-title">Datos Padre</h5></center>
    </div>
    <hr></hr>
    <h6>Datos obligatorios (*)</h6>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nombre*</label>
      <input type="text" class="form-control" id="inputEmail4" name="nombre_padre" placeholder="Nombre">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido*</label>
      <input type="text" class="form-control" id="inputPassword4" name="apellido_padre" placeholder="Apellido">
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">D.N.I*</label>
      <input type="text" class="form-control" id="inputEmail4" name="dni_padre" placeholder="D.N.I" maxlength="8" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Fecha de Nacimiento*</label>
      <input type="date" class="form-control" id="inputPassword4" name="fecha_nacimiento_padre" placeholder="">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Correo*</label>
      <input type="email" class="form-control" id="inputEmail4" name="mail_padre" placeholder="Correo">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Celular*</label>
      <input type="number" class="form-control" id="inputEmail4" name="celular_padre" placeholder="E.J: 1154682411">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Socio</label>
      <input type="text" class="form-control" id="inputEmail4" name="numero_socio_padre" placeholder="Nº De Socio">
    </div>    
  </div>
  <hr></hr>
  <div class="titulo">
    <center><h5 class="card-title">Datos Madre</h5></center>
    </div>
    <hr></hr>
    <h6>Datos obligatorios (*)</h6>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nombre*</label>
      <input type="text" class="form-control" id="inputEmail4" name="nombre_madre" placeholder="Nombre">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Apellido*</label>
      <input type="text" class="form-control" id="inputPassword4" name="apellido_madre" placeholder="Apellido">
    </div>
     <div class="form-group col-md-6">
      <label for="inputEmail4">D.N.I*</label>
      <input type="text" class="form-control" id="inputEmail4" name="dni_madre" placeholder="D.N.I" maxlength="8" >
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Fecha de Nacimiento*</label>
      <input type="date" class="form-control" id="inputPassword4" name="fecha_nacimiento_madre" placeholder="">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Correo*</label>
      <input type="email" class="form-control" id="inputEmail4" name="mail_madre" placeholder="Correo">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Celular*</label>
      <input type="text" class="form-control" id="inputEmail4" name="celular_madre" placeholder="E.J: 1154286587">
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Nº De Socio</label>
      <input type="text" class="form-control" id="inputEmail4" name="numero_socio_madre" placeholder="Nº De Socio">
    </div>    
  </div>
  
<br>
 <button type="submit" class="btn btn-primary">Enviar</button> 
</form>
</div>
</div>
</div>
</div>
</div>
<br>
<br>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/js/bootstrap.min.js" integrity="sha384-3qaqj0lc6sV/qpzrc1N5DC6i1VRn/HyX4qdPaiEFbn54VjQBEU341pvjz7Dv3n6P" crossorigin="anonymous"></script>

</body>
</html>