package com.educacionit.BaseDeDatos;

import com.educacionit.entidades.*;
import com.educacionit.excepciones.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class InformeBoteDAO  {
	
	
	public static boolean Insertarinforme(InformeBote informebote, String categoria,String nombre,String apellido,String mail) throws Excepciones
	{
		boolean correcto=false;
		Connection con=null;
		PreparedStatement pt=null;
		Calendar calendario=Calendar.getInstance();
		int fechasemanames=calendario.get(Calendar.WEEK_OF_MONTH);
		
		
		try
		{
			
			con=AdministradorDeConexion.obtenerConexion();
			
			
			String sql="INSERT INTO informe(id_informe,nombre,apellido,correo,categoria,numerobote,problema,tipodeproblema,descripcion,fecha,dia_semana_mes,anio) VALUE(?,?,?,?,?,?,?,?,?,?,?,?)";
			pt=con.prepareStatement(sql);
			pt.setString(1, informebote.getId());
			pt.setString(2, nombre);
			pt.setString(3,apellido);
			pt.setString(4, mail);
			pt.setString(5, categoria);
			pt.setString(6, informebote.getNumerogomon());
			pt.setString(7, informebote.getProblema());
			pt.setString(8, informebote.getTipodeProblema());
			pt.setString(9, informebote.getDescripcion());
			pt.setString(10, informebote.getFecha());
			pt.setInt(11, fechasemanames);
			pt.setInt(12,informebote.getAnio());
			
			pt.execute();
			
			correcto=true;
			
		}catch(Exception e)
		{
			e.printStackTrace();
			throw new Excepciones("Problema al insertar los datos");
			
		}finally
		{
			try
			{
				pt.close();
				con.close();
			}catch(Exception e)
			{
				
			}
			
		}
		
		return correcto;
		
	}
	
	public static List<InformeBote> getinformesbote() throws Excepciones
	{
		ArrayList<InformeBote> informebote=new ArrayList<InformeBote>();
		Connection con=null;
		PreparedStatement pt=null;
		ResultSet rt=null;
		
		try 
		{
           try {
        	   con=AdministradorDeConexion.obtenerConexion();
           }catch(Exception e)
           {
        	   
        	   e.printStackTrace();
        	   throw new Excepciones("Error en la Conexion");
           }
           
           String sql="SELECT * FROM informe";
           pt=con.prepareStatement(sql);
           rt=pt.executeQuery();
           while(rt.next())
           {
        	   InformeBote informe=new InformeBote();
        	   String nombre=rt.getString("nombre");
        	   String apellido=rt.getString("apellido");
        	   String correo=rt.getString("correo");
        	   String numerobote=rt.getString("numerobote");
        	   String problema=rt.getString("problema");
        	   String tipodeproblema=rt.getString("tipodeproblema");
        	   String descripcion=rt.getString("descripcion");
        	   informe.setCorreo(correo);
        	   informe.setNumerogomon(numerobote);
        	   informe.setProblema(problema);
        	   informe.setTipodeproblema(tipodeproblema);
        	   informe.setDescripcion(descripcion);
        	   
        	   informebote.add(informe);
           }
           
		}catch(Exception e)
		{
		   	e.printStackTrace();
		   	throw new Excepciones("Error de consulta");
		}finally
		{
			try
			{
				rt.close();
				pt.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
				throw new Excepciones("Error al cerrar la conexion");
			}
		}
		
		
		return informebote;
	}
	
	
	/* VALIDA QUE EXISTA EL ENTRENADOR ANTES DE ENVIAR EL INFORME DEL BOTE*/
	
	public static boolean autentificacionEntrenador(String correo)
	{
		boolean respuesta=false;
		
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
			
			String sql="SELECT * FROM persona WHERE correo = ? ";
			ps=con.prepareStatement(sql);
			ps.setString(1, correo);
		    rs=ps.executeQuery();
		    if(rs.next())
		    {
		    	respuesta=true;
		    }
			
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
		
		
		return respuesta;
	}
	
	/*TRAE LA CATEGORIA DEL ENTRENADOR PARA INSETARLA EN EL INFORME*/
	
	public static String getCategoria(String correo)
	{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String categoria=null;
		try
		{
			try
			{
				con=AdministradorDeConexion.obtenerConexion();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			String sql="SELECT categoria FROM persona WHERE correo = ? ";
			ps=con.prepareStatement(sql);
			ps.setString(1, correo);
			rs=ps.executeQuery();
			if(rs.next())
			{
			   categoria=rs.getString("categoria");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return categoria;
	}
	
	public static String getNombre(String correo)
	{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String nombre=null;
		try
		{
			try
			{
				con=AdministradorDeConexion.obtenerConexion();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
			String sql="SELECT nombre FROM persona WHERE correo = ? ";
			ps=con.prepareStatement(sql);
			ps.setString(1, correo);
			rs=ps.executeQuery();
			if(rs.next())
			{
			   nombre=rs.getString("nombre");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return nombre;
	}
	
	public static String getApellido(String correo) throws Excepciones
	{
		String apellido=null;
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
				throw new Excepciones("Error de conexion con el servidor");
			}
			
			String sql="SELECT apellido FROM persona WHERE correo= ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, correo);
			rs=ps.executeQuery();
			if(rs.next())
			{
				apellido=rs.getString("apellido");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
			throw new Excepciones("Error al seleccionar los datos");
		}finally
		{
			try
			{
				rs.close();
				ps.close();
				con.close();
			}catch(Exception e )
			{
				e.printStackTrace();
				throw new Excepciones("Error al cerrar las conexiones");
			}
		}
		
		return apellido;
	}
	
	/*GET CORREO*/
	
	public static String getCorreo(String correo)
	{
		
		Connection con=null;
		correo=null;
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
			String sql="SELECT * FROM persona WHERE correo= ?";
			ps=con.prepareStatement(sql);
			ps.setString(1,correo);
			rs=ps.executeQuery();
			if(rs.next())
			{
			   correo=rs.getString("correo");
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return correo;
		
	}
	
	public static boolean ActualizarPrioridad(PrioridadInforme prioridadInforme)
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
			
			String sql="UPDATE informe SET prioridad = ? WHERE id_informe = ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, prioridadInforme.getPrioridad());
			ps.setString(2, prioridadInforme.getIdPrioridad());
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

}
