package com.educacionit.excepciones;

public class Excepciones extends Exception {
	
	private String mensaje;
	
	public Excepciones(String mensaje)
	{
		this.mensaje=mensaje;
		
	}
	
	public String getMessage()
	{
		return mensaje;
	}
	
	

}
