package com.educacionit.entidades;

public class Alumnos extends Persona {
	
	private int dni;
	private String fechaNacimiento;
	private String fechaNacimientoDia;
	private String fechaNacimientoMes;
	private String fechaNacimientoAnio;
	private int edad;
	private String numeroSocio;
	private String numeroDeVela;
	private String categoria;
	/*DATOS PADRE*/
	private String nombrePadre;
	private String apellidoPadre;
	private String correoPadre;
	private String celularPadre;
	private int dniPadre;
	private String numeroSocioPadre;
	private String fechaNacimientoPadre;
	/*DATOS MADRE*/
	private String nombreMadre;
	private String apellidoMadre;
	private String correoMadre;
	private String celularMadre;
	private int dniMadre;
	private String numeroSocioMadre;
	private String fechaNacimientoMadre;
	
	
	
	public Alumnos()
	{
		
	}
	
	public Alumnos(String id ,String nombre, String apellido,String correo,String celular , int dni ,String fechaNacimiento, String fechaNacimientoDia, String fechaNacimientoMes , String fechaNacimientoAnio , int edad,String numeroSocio,String numeroDeVela,String categoria, String nombrePadre,String apellidoPadre, String correoPadre , String celularPadre, int dniPadre, String numeroSocioPadre, String fechaNacimientoPadre  ,String nombreMadre, String apellidoMadre, String correoMadre, String celularMadre, int dniMadre, String numeroSocioMadre, String fechaNacimientoMadre)
	{
		super(id,nombre,apellido,correo,celular);
		this.dni=dni;
		this.fechaNacimiento=fechaNacimiento;
		this.fechaNacimientoDia=fechaNacimientoDia;
		this.fechaNacimientoMes=fechaNacimientoMes;
		this.fechaNacimientoAnio=fechaNacimientoAnio;
		this.edad=edad;
		this.numeroSocio=numeroSocio;
		this.numeroDeVela=numeroDeVela;
		this.categoria=categoria;
		this.nombrePadre=nombrePadre;
		this.apellidoPadre=apellidoPadre;
		this.correoPadre=correoPadre;
		this.celularPadre=celularPadre;
		this.dniPadre=dniPadre;
		this.numeroSocioPadre=numeroSocioPadre;
		this.fechaNacimientoPadre=fechaNacimientoPadre;
		this.nombreMadre=nombreMadre;
		this.apellidoMadre=apellidoMadre;
		this.correoMadre=correoMadre;
		this.celularMadre=celularMadre;
		this.dniMadre=dniMadre;
		this.numeroSocioMadre=numeroSocioMadre;
		this.fechaNacimientoMadre=fechaNacimientoMadre;
		
	}
	
	public void setDni(int dni)
	{
		this.dni=dni;
	}
	public int getDni()
	{
		return dni;
	}
	
	

	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	
	

	public String getFechaNacimientoDia() {
		return fechaNacimientoDia;
	}

	public void setFechaNacimientoDia(String fechaNacimientoDia) {
		this.fechaNacimientoDia = fechaNacimientoDia;
	}

	public String getFechaNacimientoMes() {
		return fechaNacimientoMes;
	}

	public void setFechaNacimientoMes(String fechaNacimientoMes) {
		this.fechaNacimientoMes = fechaNacimientoMes;
	}

	public String getFechaNacimientoAnio() {
		return fechaNacimientoAnio;
	}

	public void setFechaNacimientoAnio(String fechaNacimientoAnio) {
		this.fechaNacimientoAnio = fechaNacimientoAnio;
	}

	public void setEdad(int edad)
	{
		this.edad=edad;
	}
	public int getEdad()
	{
		return edad;
	}

	public String getNumeroSocio() {
		return numeroSocio;
	}

	public void setNumeroSocio(String numeroSocio) {
		this.numeroSocio = numeroSocio;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getNumeroDeVela() {
		return numeroDeVela;
	}

	public void setNumeroDeVela(String numeroDeVela) {
		this.numeroDeVela = numeroDeVela;
	}

	public String getNombrePadre() {
		return nombrePadre;
	}

	public void setNombrePadre(String nombrePadre) {
		this.nombrePadre = nombrePadre;
	}

	public String getApellidoPadre() {
		return apellidoPadre;
	}

	public void setApellidoPadre(String apellidoPadre) {
		this.apellidoPadre = apellidoPadre;
	}

	public String getCorreoPadre() {
		return correoPadre;
	}

	public void setCorreoPadre(String correoPadre) {
		this.correoPadre = correoPadre;
	}

	public String getCelularPadre() {
		return celularPadre;
	}

	public void setCelularPadre(String celularPadre) {
		this.celularPadre = celularPadre;
	}

	public String getNombreMadre() {
		return nombreMadre;
	}

	public void setNombreMadre(String nombreMadre) {
		this.nombreMadre = nombreMadre;
	}

	public String getApellidoMadre() {
		return apellidoMadre;
	}

	public void setApellidoMadre(String apellidoMadre) {
		this.apellidoMadre = apellidoMadre;
	}

	public String getCorreoMadre() {
		return correoMadre;
	}

	public void setCorreoMadre(String correoMadre) {
		this.correoMadre = correoMadre;
	}

	public String getCelularMadre() {
		return celularMadre;
	}

	public void setCelularMadre(String celularMadre) {
		this.celularMadre = celularMadre;
	}
	
	public void setDniMadre(int dniMadre )
	{
		this.dniMadre=dniMadre;
	}
	
	public int getDniMadre()
	{
		return dniMadre;
	}
	
	public void setNumeroSocioMadre(String numeroSocioMadre)
	{
		this.numeroSocioMadre=numeroSocioMadre;
	}

	public String getNumeroSocioMadre()
	{
		return numeroSocioMadre;
	}
	
	public void setFechaNacimientoMadre(String fechaNacimientoMadre)
	{
		this.fechaNacimientoMadre=fechaNacimientoMadre;
	}
	public String getFechaNacimientoMadre()
	{
		return fechaNacimientoMadre;
	}
	
	public void setDniPadre(int dniPadre)
	{
		this.dniPadre=dniPadre;
	}
	
	public int getDniPadre()
	{
		return dniPadre;
	}
	
	public void setNumeroSocioPadre(String numeroSocioPadre)
	{
		this.numeroSocioPadre=numeroSocioPadre;
	}
	
	public String getNumeroSocioPadre()
	{
		return numeroSocioPadre;
	}

	public String getFechaNacimientoPadre() {
		return fechaNacimientoPadre;
	}

	public void setFechaNacimientoPadre(String fechaNacimientoPadre) {
		this.fechaNacimientoPadre = fechaNacimientoPadre;
	}
	
	
}
