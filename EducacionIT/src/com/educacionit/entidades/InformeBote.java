package com.educacionit.entidades;

import java.util.Date;

public class InformeBote{

	private String id;
	private String correo;
	private String numerogomon;
	private String problema;
	private String tipodeproblema;
	private String descripcion;
	private String fecha;
	private int anio;
	
	
	
	public InformeBote()
	{
		
	}
	
	public InformeBote(String id, String correo,String numerogomon, String problema,String tipodeproblema, String descripcion, String fecha, int anio)
	{
		this.id=id;
		this.correo=correo;
		this.numerogomon=numerogomon;
		this.problema=problema;
		this.tipodeproblema=tipodeproblema;
		this.descripcion=descripcion;
		this.fecha=fecha;
		this.anio=anio;
		
		
		
	}	
	
	public void setId(String id)
	{
		this.id=id;
	}
	public String getId()
	{
		return id;
	}
	public void setCorreo(String correo)
	{
		this.correo=correo;
	}
	public String getCorreo()
	{
		return correo;
	}

	public String getNumerogomon() {
		return numerogomon;
	}

	public void setNumerogomon(String numerogomon) {
		this.numerogomon = numerogomon;
	}

	public String getProblema() {
		return problema;
	}

	public void setProblema(String problema) {
		this.problema = problema;
	}
	
	public void setTipodeproblema(String tipodeproblema)
	{
		this.tipodeproblema=tipodeproblema;
	}
	
	public String getTipodeProblema()
	{
		return tipodeproblema;
	}
	public void setDescripcion( String descripcion)
	{
		this.descripcion=descripcion;
	}
	public String getDescripcion()
	{
		return descripcion;
	}
	public void setFecha(String fecha)
	{
		this.fecha=fecha;
	}
	public String getFecha()
	{
		return fecha;
	}
	
	public void setAnio(int anio)
	{
		this.anio=anio;
	}
	public int getAnio()
	{
		return anio;
	}
	
	
}
