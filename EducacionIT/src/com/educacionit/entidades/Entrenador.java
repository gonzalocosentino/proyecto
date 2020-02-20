package com.educacionit.entidades;

public class Entrenador extends Persona {
	
	private int dni;
	private String fechaNacimiento;
	private String fechaExpiracionCarnet;
	private String categoria;
	private String password;
	
	public Entrenador()
	{
		
	}
	public Entrenador(String id,String nombre,String apellido,String correo,String celular, int dni, String fechaNacimiento, String fechaExpiracionCarnet, String categoria,String password)
	{
		super(id,nombre,apellido,correo,celular);
		this.dni=dni;
		this.fechaNacimiento=fechaNacimiento;
		this.fechaExpiracionCarnet=fechaExpiracionCarnet;
		this.categoria=categoria;
		this.password=password;
	}
	
	public void setDni(int dni)
	{
		this.dni=dni;
	}
	public int getDni()
	{
		return dni;
	}
	
	public void setFechaNacimiento(String fechaNacimiento)
	{
		this.fechaNacimiento=fechaNacimiento;
	}
	public String getFechaNacimiento()
	{
		return fechaNacimiento;
	}
	
	public void setFechaExpiracionCarnet(String fechaExpiracionCarnet)
	{
	  this.fechaExpiracionCarnet=fechaExpiracionCarnet;
	}
	
	public String getFechaExpiracionCarnet()
	{
		return fechaExpiracionCarnet;
	}

	public void setCategoria(String categoria)
	{
		this.categoria=categoria;
	}
	
	public String getCategoria()
	{
		return categoria;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public String getPassword()
	{
		return password;
	}
}
