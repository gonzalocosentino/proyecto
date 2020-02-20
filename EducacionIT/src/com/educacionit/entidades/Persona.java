package com.educacionit.entidades;

public class Persona {
	
	protected String id;
	protected String nombre;
	protected String apellido;
	protected String correo;
	protected String celular;
	
	
	
	
	public Persona()
	{
		
	}
	public Persona(String id,String nombre, String apellido, String correo,String celular)
	{
		this.id=id;
		this.nombre=nombre;
		this.apellido=apellido;
		this.correo=correo;	
		this.celular=celular;
	
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
		
	

}
