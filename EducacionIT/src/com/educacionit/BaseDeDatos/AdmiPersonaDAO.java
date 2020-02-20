package com.educacionit.BaseDeDatos;
import com.educacionit.entidades.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class AdmiPersonaDAO {

	
	
	public static  boolean autentificacion(String mail, String password) 
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
			
			String sql="SELECT * FROM adminpersona WHERE correo = ? AND password= ? ";
			ps=con.prepareStatement(sql);
			ps.setString(1, mail);
			ps.setString(2, password);
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
				rs.close();
				ps.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		return respuesta;		
	}
	
	public static Persona nombreusuario(String mail)
	{
		Persona user = null;
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
			
			String sql="SELECT nombre,apellido FROM adminpersona WHERE correo = ?";
			ps=con.prepareStatement(sql);
			ps.setString(1, mail);
			rs=ps.executeQuery();
			while(rs.next())
			{
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				user=new Persona();
				user.setNombre(nombre);
				user.setApellido(apellido);
				
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
				
		
		
		return user;
	}
	
}
