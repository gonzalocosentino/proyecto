package com.educacionit.BaseDeDatos;

import java.sql.Connection;
import java.sql.DriverManager;
public class AdministradorDeConexion {

	public static Connection obtenerConexion() throws Exception
	{
		
		String dbDriver="org.mariadb.jdbc.Driver";
	    String dbRoot="jdbc:mariadb://localhost:3306/informebote";
	    String dbUser="root";
	    String dbPw="";
	    Class.forName(dbDriver);
	    Connection con=DriverManager.getConnection(dbRoot,dbUser,dbPw);
	    
		return con;
	}
	
}
