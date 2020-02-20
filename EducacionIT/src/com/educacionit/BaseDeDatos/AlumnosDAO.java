package com.educacionit.BaseDeDatos;

import java.sql.*;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.educacionit.entidades.*;
public class AlumnosDAO {
	
	
	public static boolean InsertarDatosAlumnos(Alumnos alumnos)
	{
		boolean correcto=false;
		Connection con=null;
		PreparedStatement ps=null;
		
		try
		{
			
				con=AdministradorDeConexion.obtenerConexion();
				
			
			String sql="INSERT INTO alumno (id_alumno,nombre,apellido,dni,fecha_nacimiento,diaNacimiento,mesNacimiento,anioNacimiento,edad,correo,celular,numero_socio,numero_de_vela,categoria,nombre_padre,apellido_padre,mail_padre,dni_padre,fecha_nacimiento_padre,celular_padre,numero_socio_padre ,nombre_madre,apellido_madre,mail_madre,celular_madre,dni_madre,numero_socio_madre,fecha_nacimiento_madre)"
					+ " VALUE (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, alumnos.getId()  );
			ps.setString(2, alumnos.getNombre());
			ps.setString(3, alumnos.getApellido());
			ps.setInt(4, alumnos.getDni());
			ps.setString(5, alumnos.getFechaNacimiento());
			ps.setString(6, alumnos.getFechaNacimientoDia());
			ps.setString(7, alumnos.getFechaNacimientoMes());
			ps.setString(8, alumnos.getFechaNacimientoAnio());
			
			ps.setInt(9, alumnos.getEdad());
			ps.setString(10, alumnos.getCorreo());
			ps.setString(11, alumnos.getCelular() );
			ps.setString(12, alumnos.getNumeroSocio());
			ps.setString(13, alumnos.getNumeroDeVela());
			ps.setString(14,alumnos.getCategoria());
		    ps.setString(15, alumnos.getNombrePadre());
		    ps.setString(16, alumnos.getApellidoPadre());
		    ps.setString(17, alumnos.getCorreoPadre());
		    ps.setInt(18, alumnos.getDniPadre());
		    ps.setString(19, alumnos.getFechaNacimientoPadre());
		    ps.setString(20, alumnos.getCelularPadre());
		    ps.setString(21, alumnos.getNumeroSocioPadre());
		    ps.setString(22, alumnos.getNombreMadre());
		    ps.setString(23, alumnos.getApellidoMadre());
		    ps.setString(24, alumnos.getCorreoMadre());
		    ps.setString(25, alumnos.getCelularMadre());
		    ps.setInt(26, alumnos.getDniMadre());
		    ps.setString(27, alumnos.getNumeroSocioMadre());
		    ps.setString(28, alumnos.getFechaNacimientoMadre());
		    ps.execute();
		    correcto=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally
		{
			try
			{
				ps.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		return correcto;		
		
	}
	
	/*ACTUALIZAR CATEGORIA */
	
	public static boolean updateCategoria(String categoria, String id)
	{
		boolean correcto=false;
		Connection con=null;
		PreparedStatement ps=null;
	    ResultSet rs=null;
	    
	    try
	    {
	    	try
	    	{
	    		con=AdministradorDeConexion.obtenerConexion();
	    		
	    	}catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	    	
	    	String sql="UPDATE alumno SET categoria=? WHERE id_alumno=? ";
	    	ps=con.prepareStatement(sql);
	    	ps.setString(1, categoria);
	    	ps.setString(2, id);
	    	ps.execute();
	    	
	    		correcto=true;
	    	
	    }catch(Exception e)
	    {
	    	e.printStackTrace();
	    }finally
	    {
	    	try
	    	{
	    		ps.close();
	    		rs.close();
	    		con.close();
	    		
	    	}catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	    }
	
		
		return correcto;
		
		
	}
	
	public static boolean updateNumeroDeVela(String numerodevela, String id)
	{
		boolean correcto=false;
		Connection con=null;
		PreparedStatement ps=null;
		
		try
		{
			try
			{
				con=AdministradorDeConexion.obtenerConexion();
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			String sql="UPDATE alumno SET numero_de_vela= ? WHERE id_alumno= ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, numerodevela);
			ps.setString(2, id);
			ps.execute();
			correcto=true;
		}catch(Exception e)
		{
			e.printStackTrace();
			
		}finally
		{
			try
			{
				ps.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		return correcto;
		
	}
	
	public static boolean InsertFichaMedicaAlumnos(FichaMedica fichamedica)
	{
		
		boolean correcto=false;
		Connection con=null;
		PreparedStatement ps=null;
		
		try
		{
			con=AdministradorDeConexion.obtenerConexion();
				
			
			
			String sql="INSERT INTO fichamedica (id_fichamedica,nombre,apellido,dni,fecha_nacimiento,obra_social,numero_afiliado,grupo_sanguineo,factor,nombre_tutor,domicilio,telefono,nombre_emergencia,apellido_emergencia,domicilio_emergencia,telefono_emergencia,celular_emergencia,sarampion,hepatitis,paperas,poliomelitis,tos_convulsa,varicela,escarlatina,eruptiva,rubeola,epilepsia,sinusitis,otraInfo,asma,bronquitis,resfrio,afecciones_oido,afecciones_nariz,afecciones_ojo,convulsiones,sonambulismo,desmayo,constipacion,hiv,otraInfoPropenso,antitetanica,antidiferica,antivariolica,antipoliomielitica,antituberculosa,antiofidica,antitifidica,apendicitis,amigdalitis,hernia,otraInfoQuirurgica,comida,medicamentos,antibioticos,picaduraInsectos,polen,plumas,otraInfoAlergias,esguince,fractura,otraInfoTraumatologica,tomaAlgunMedicamento,cualMedicamento,sigueAlgunTratamiento,cualTratamiento,problemaDeQuemaduras,cualRegimenAlimenticio) VALUE(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,  fichamedica.getId());
			ps.setString(2,  fichamedica.getNombre());
			ps.setString(3,  fichamedica.getApellido());
			ps.setInt(4,     fichamedica.getDni());
			ps.setString(5,  fichamedica.getFechaDeNacimiento());
			ps.setString(6,  fichamedica.getObraSocial());
			ps.setString(7,     fichamedica.getNumeroAfiliado());
			ps.setString(8,  fichamedica.getGrupoSanguineo());
			ps.setString(9,  fichamedica.getFactor());
			ps.setString(10, fichamedica.getNombreTutor());
			ps.setString(11, fichamedica.getDomicilio());
			ps.setString(12, fichamedica.getTelefono());
			ps.setString(13, fichamedica.getNombreEmergencia());
			ps.setString(14,fichamedica.getApellidoEmergencia());
			ps.setString(15, fichamedica.getDomicilioEmergencia());
			ps.setString(16, fichamedica.getTelefonoEmergencia());
			ps.setString(17, fichamedica.getCelularEmergencia());
			ps.setString(18, fichamedica.getSarampion());
			ps.setString(19, fichamedica.getHepatitis());
			ps.setString(20, fichamedica.getPaperas());
			ps.setString(21, fichamedica.getPoliomelitis());
			ps.setString(22, fichamedica.getTosConvulsa());
			ps.setString(23, fichamedica.getVaricela());
			ps.setString(24, fichamedica.getEscarlatina());
			ps.setString(25, fichamedica.getEruptiva());
			ps.setString(26, fichamedica.getRubeola());
			ps.setString(27, fichamedica.getEpilepsia());
			ps.setString(28, fichamedica.getSinusitis());
			ps.setString(29, fichamedica.getOtraInfo());
			ps.setString(30, fichamedica.getAsma());
			ps.setString(31, fichamedica.getBronquitis());
			ps.setString(32, fichamedica.getResfrio());
			ps.setString(33, fichamedica.getAfeccionesOido());
			ps.setString(34, fichamedica.getAfeccionesNariz());
			ps.setString(35, fichamedica.getAfeccionesOido());
			
			ps.setString(36, fichamedica.getConvulsiones());
			ps.setString(37, fichamedica.getSonambulismo());
			ps.setString(38, fichamedica.getDesmayo());
			ps.setString(39, fichamedica.getConstipaciones());
			ps.setString(40, fichamedica.getHiv());
			ps.setString(41, fichamedica.getOtraInfoPropenso());
			
			ps.setString(42, fichamedica.getAntitetanica());
			ps.setString(43, fichamedica.getAntidiferica());
			ps.setString(44, fichamedica.getAntivariolica());
			ps.setString(45, fichamedica.getAntipoliomielitica());
			ps.setString(46, fichamedica.getAntituberculosa());
			ps.setString(47, fichamedica.getAntiofidica());
			ps.setString(48, fichamedica.getAntitifidica());
			
			ps.setString(49, fichamedica.getApendicitis());
			ps.setString(50, fichamedica.getAmigdalitis());
			ps.setString(51, fichamedica.getHernia());
			ps.setString(52, fichamedica.getOtraInfoQuirurgica());
		    
			ps.setString(53, fichamedica.getComida());
			ps.setString(54, fichamedica.getMedicamentos());
			ps.setString(55, fichamedica.getAntibioticos());
			ps.setString(56, fichamedica.getPicaduraInsectos());
			ps.setString(57, fichamedica.getPolen());
			ps.setString(58, fichamedica.getPlumas());
			ps.setString(59, fichamedica.getOtraInfoAlergias());
			
			ps.setString(60, fichamedica.getEsguince());
			ps.setString(61, fichamedica.getFractura());
			ps.setString(62, fichamedica.getOtraInfoTraumatologica());
			ps.setString(63, fichamedica.getTomaAlgunMedicamento());
			ps.setString(64, fichamedica.getCualMedicamento());
			ps.setString(65, fichamedica.getSigueAlgunTratamiento());
			ps.setString(66, fichamedica.getCualTratamiento());
			ps.setString(67, fichamedica.getProblemasDeQuemaduras());
			ps.setString(68, fichamedica.getCualRegimenAlimenticio());				
			ps.execute();
			correcto=true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally
		{
			try
			{
				ps.close();
				con.close();
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		
		return correcto;
	}
	
	/* VALIDAR ALUMNO */
	public static boolean ValidarAlumno(int dni)
	{
		
		boolean correcto=false;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try
		{
			try
			{
				con=AdministradorDeConexion.obtenerConexion();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			String sql="SELECT * FROM alumno WHERE dni=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1,dni);
			rs=ps.executeQuery();
			if(rs.next())
			{
				correcto=true;
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally
		{
			try
			{
				rs.close();
				ps.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		return correcto;
	}
	
	/*VALIDAR SI YA EXISTE FICHA MEDICA INGRESADA*/
	
	public static boolean ValidarAlumnoFichaMedica(int dni)
	{
		boolean exito=false;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try
		{
			try
			{
				con=AdministradorDeConexion.obtenerConexion();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			String sql="SELECT dni FROM fichamedica WHERE dni=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, dni);
			rs=ps.executeQuery();
			if(rs.next())
			{
				exito=true;
			}
			
		}catch(Exception e)
		{
		   e.printStackTrace();	
		}finally
		{
			try
			{
				rs.close();
				ps.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
		
		
		
		return exito;
		
	}
	
	
	public static ArrayList<Alumnos> getDatos()
	{
		
		

		
		ArrayList<Alumnos> arreglo=new ArrayList<Alumnos>();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try
		{
			con=AdministradorDeConexion.obtenerConexion();
			String sql="SELECT * FROM alumno ";
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next())
			{
				DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd-MM-yyyy");
				Alumnos alumnos=new Alumnos();
				String id=rs.getString("id_alumno");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				int dni=rs.getInt("dni");
				String dia=rs.getString("diaNacimiento");
				String mes=rs.getString("mesNacimiento");
				String anio=rs.getString("anioNacimiento");
				String fechaNacimiento=dia+"-"+mes+"-"+anio;
				LocalDate fechaNac = LocalDate.parse(fechaNacimiento, fmt);
				LocalDate ahora = LocalDate.now();
				Period periodo = Period.between(fechaNac, ahora);
				int edad=periodo.getYears();
				String correo=rs.getString("correo");
				String celular=rs.getString("celular");
				String numerosocio=rs.getString("numero_socio");
				String numerodevela=rs.getString("numero_de_vela");
				String categoria=rs.getString("categoria");
				
				
				alumnos.setId(id);
				alumnos.setNombre(nombre);
				alumnos.setApellido(apellido);
				alumnos.setDni(dni);
				alumnos.setFechaNacimientoDia(dia);
				alumnos.setFechaNacimientoMes(mes);
				alumnos.setFechaNacimientoAnio(anio);
				alumnos.setEdad(edad);
				alumnos.setCorreo(correo);
				alumnos.setCelular(celular);
				alumnos.setNumeroSocio(numerosocio);
				alumnos.setNumeroDeVela(numerodevela);
				alumnos.setCategoria(categoria);
				
				arreglo.add(alumnos);
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
		return arreglo;
		
		
	}

}
