package com.educacionit.entidades;

public class PrioridadInforme {
	
	private String idPrioridad;
	private String prioridad;
	
	public PrioridadInforme(String idPrioridad, String prioridad)
	{
		this.idPrioridad=idPrioridad;
		this.prioridad=prioridad;
		
	}
	
	public void getIdPrioridad(String idPrioridad)
	{
		this.idPrioridad=idPrioridad;
	}
	public String getIdPrioridad()
	{
		return idPrioridad;
	}
	
	public void setPrioridad(String prioridad)
	{
		this.prioridad=prioridad;
	}
	public String getPrioridad()
	{
		return prioridad;
	}

}
