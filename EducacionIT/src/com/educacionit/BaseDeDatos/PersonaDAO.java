package com.educacionit.BaseDeDatos;

import com.educacionit.entidades.*;
import com.educacionit.excepciones.*;
import java.sql.*;
public class PersonaDAO {
	
	public static void Insertarpersona(Persona persona) throws Excepciones
	{
		Connection con=null;
		PreparedStatement pt=null;
		
		try
		{
				con=AdministradorDeConexion.obtenerConexion();
				String sql="INSERT INTO persona(id_persona,nombre,apellido,correo) VALUE(?,?,?,?)";
				pt=con.prepareStatement(sql);
				pt.setString(1, persona.getId());
				pt.setString(2, persona.getNombre());
				pt.setString(3, persona.getApellido());
				pt.setString(4, persona.getCorreo());				
				pt.execute();
			
			
		}catch(Exception e)
		{
			throw new Excepciones("Error al conectarse con la Base De Datos");
		}finally
		{
			try
			{
				pt.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		
		
		
	}

}
