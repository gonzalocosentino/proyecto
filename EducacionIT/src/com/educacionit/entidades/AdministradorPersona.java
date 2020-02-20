package com.educacionit.entidades;

public class AdministradorPersona extends Persona {
	
	private String password;
	
	public AdministradorPersona()
	{
		
	}
	
	public AdministradorPersona(String id, String nombre, String apellido, String correo,String celular ,String password)
	{
		super(id,nombre,apellido,correo,celular);
		this.password=password;
	}
	
	public void setPassword(String password)
	{
		this.password=password;
	}
	
	public String get()
	{
		return password;
	}

}
