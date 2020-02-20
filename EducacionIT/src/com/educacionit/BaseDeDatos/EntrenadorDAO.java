package com.educacionit.BaseDeDatos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.educacionit.entidades.*;
import com.educacionit.excepciones.Excepciones;

public class EntrenadorDAO {
	
	
	/* GUARDA LOS DATOS DEL ENTRENADOR DE LA BASE DE DATOS */
	
	public static void Insertar( Entrenador entrenador  ) throws Exception
	{
		
		Connection con=null;
		PreparedStatement ps=null;
		
		try
		{
			
				
		  con=AdministradorDeConexion.obtenerConexion();
			
			
			String sql="INSERT INTO persona(id_persona,nombre,apellido,correo,celular,password,dni,fecha_nacimiento,fechaexpiracioncarnet,categoria) VALUE(?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, entrenador.getId());
			ps.setString(2, entrenador.getNombre());
			ps.setString(3, entrenador.getApellido());
			ps.setString(4, entrenador.getCorreo());
			ps.setString(5, entrenador.getCelular());
			ps.setString(6, entrenador.getPassword());
			ps.setInt(7, entrenador.getDni());
			ps.setString(8, entrenador.getFechaNacimiento());	
			ps.setString(9, entrenador.getFechaExpiracionCarnet());
			ps.setString(10, entrenador.getCategoria());
			ps.execute();
			
		}catch(Exception e)
		{
			
		}
		
		
	}
	
	/* ACTUALIZAR CORREO */
	
	public static boolean actualizarcorreo(String id, String correo)
	{
	    boolean actualizarcorreo=true;
		Connection con=null;
		PreparedStatement ps=null;
		
	    try
	    {
	    	try
	    	{
	    		
	    		con=AdministradorDeConexion.obtenerConexion();	
	    		
	    	}catch(Exception e)
	    	{
	    		
	    	}
	    	
	    	String sql="UPDATE persona SET correo = ? WHERE id_persona = ?";
	    	ps=con.prepareStatement(sql);
	    	ps.setString(1, correo);
	    	ps.setString(2, id);
	    	ps.execute();
	    }catch(Exception e)
	    {
	    	
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
		
		
		
		return actualizarcorreo;
		
	}
	
	/* ACTUALIZAR FECHA CARNET */
	
	public static boolean actulizarfechacarnet(String id, String fechacarnet) throws Excepciones
	{
		
		boolean actualizarfechacarnet=true;
		
		Connection con=null;
		PreparedStatement ps= null;
		
		try
		{
			try
			{
				con=AdministradorDeConexion.obtenerConexion();
			}catch(Exception e)
			{
				e.printStackTrace();
				throw new Excepciones("Error de conexion");
			}
			
			String sql="UPDATE persona SET fechaexpiracioncarnet =? WHERE id_persona = ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, fechacarnet);
			ps.setString(2, id);
			ps.execute();
			
			
		}catch(Exception e)
		{
			
		}
		
		
		return actualizarfechacarnet;
	}
	
	/* BORRRA AL ENTRENADOR */
	
	public static boolean deletentrenador(String id)
	{
		boolean deletentrenador=true;
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
			
			String sql="DELETE FROM persona WHERE id_persona = ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ps.execute();
		}catch(Exception e)
		{
			
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
		
		
		return deletentrenador;
	}

	public static boolean verificarentrenador(String mail, String password ) 
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
			
			String sql="SELECT * FROM persona WHERE correo= ? AND password = ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, mail);
			ps.setString(2, password);
			rs=ps.executeQuery();
			if(rs.next())
			{
				correcto=true;
			}
		}catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		
		return correcto;
	}
	
	
	public static Entrenador getDatosEntrenador(String mail)
	{
		
		Entrenador user=null;
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
			
			String sql="SELECT * FROM persona WHERE correo= ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, mail);
			rs=ps.executeQuery();
			while(rs.next())
			{
				user=new Entrenador();
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				String categoria=rs.getString("categoria");
				String correo=mail;
	            user.setNombre(nombre);
	            user.setApellido(apellido);
	            user.setCategoria(categoria);
	            user.setCorreo(correo);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	 
			
		return user;
	}
	
	/*EDITAR CONTRASENIA*/
	
	public static boolean editarContrasenia(String id, String password)
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
			
			String sql="UPDATE persona SET password= ? WHERE id_persona= ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, password);
			ps.setString(2, id);
			rs=ps.executeQuery();
			
			correcto=true;
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
	
	/*ACTUALIZAR CATEGORIA*/
	
	public static boolean ActualizarCategoria(String id, String categoria)
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
		   	
		   	String sql="UPDATE persona SET categoria=? WHERE id_persona=?";
		   	ps=con.prepareStatement(sql);
		   	ps.setString(1, categoria );
		   	ps.setString(2, id);
		   	ps.execute();
		   	correcto=true;
		}catch(Exception e)
		{
		e.printStackTrace();	
		}
		
		
		
		return correcto;
		
	}
}
