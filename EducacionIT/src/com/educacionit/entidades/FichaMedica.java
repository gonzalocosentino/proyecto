package com.educacionit.entidades;

public class FichaMedica  {
	
	private String id_fichamedica;
	private String nombre;
	private String apellido;
	private int dni;
	private String fechaDeNacimiento;
	private String obraSocial;
	private String numeroAfiliado;
	private String grupoSanguineo;
	private String factor;
	private String nombreTutor;
	private String domicilio;
	private String telefono;

/*DATOS EN CASO DE PERSONA EN CASO DE EMERGENCIA*/
	
	private String nombreEmergencia;
	private String apellidoEmergencia;
	private String domicilioEmergencia;
	private String telefonoEmergencia;
	private String celularEmergencia;
	
/*HISTORIA CLINICA*/
	
	private String sarampion;
	private String hepatitis;
	private String paperas;
	private String poliomelitis;
	private String tosConvulsa;
	private String varicela;
	private String escarlatina;
	private String eruptiva;
	private String rubeola;
	private String epilepsia;
	private String sinusitis;
	private String otraInfo;
	
	
    private String asma;
    private String bronquitis;
    private String resfrio;
    private String afeccionesOido;
    private String afeccionesNariz;
    private String afeccionesOjo;
    private String convulsiones;
    private String sonambulismo;
    private String desmayo;
    private String constipaciones;
    private String hiv;
    private String otraInfoPropenso;
    
    private String antitetanica;
    private String antidiferica;
    private String antivariolica;
    private String antipoliomielitica;
    private String antituberculosa;
    private String antiofidica;
    private String antitifidica;
    
    private String apendicitis;
    private String amigdalitis;
    private String hernia;
    private String otraInfoQuirurgica;
    
    private String comida;
    private String medicamentos;
    private String antibioticos;
    private String picaduraInsectos;
    private String polen;
    private String plumas;
    private String otraInfoAlergias;
    
    private String esguince;
    private String fractura;
    private String otraInfoTraumatologica;
    
    private String tomaAlgunMedicamento;
    private String cualMedicamento;
    private String sigueAlgunTratamiento;
    private String cualTratamiento;
    private String problemasDeQuemaduras;
    private String cualRegimenAlimenticio;
    
    /* CONSTRUCTOR */
    public FichaMedica()
    {
    	
    }
    
    public FichaMedica(String id_fichamedica, String nombre, String apellido, int dni, String fechaDeNacimiento, String obraSocial, String numeroAfiliado, String grupoSanguineo, String factor, String nombreTutor, String domicilio, String telefono, String nombreEmergencia, String apellidoEmergencia,String domicilioEmergencia, String telefonoEmergencia, String celularEmergencia, String sarampion, String hepatitis, String paperas, String poliomelitis, String tosConvulsa, String varicela, String escarlatina, String eruptiva, String rubeola, String epilepsia, String sinusitis, String otraInfo,String asma, String bronquitis, String resfrio, String afeccionesOido, String afeccionesNariz, String afeccionesOjo,String convulsiones, String sonambulismo, String desmayo, String constipacion, String hiv, String otraInfoPropenso, String antitetanica, String antidiferica, String antivariolica, String antipoliomielitica, String antituberculosa, String antiofidica, String antitifidica, String apendicitis, String amigdalitis, String hernia, String otraInfoQuirurgica, String comida, String medicamentos, String antibioticos, String picaduraInsectos, String polen, String plumas, String otraInfoAlergias, String esguince, String fractura, String otraInfoTraumatologica, String tomaAlgunMedicamento, String cualMedicamento, String sigueAlgunTratamiento, String cualTratamiento, String problemasDeQuemaduras, String cualRegimenAlimenticio)
    {
    	this.id_fichamedica=id_fichamedica;
    	this.nombre=nombre;
    	this.apellido=apellido;
    	this.dni=dni;
    	this.fechaDeNacimiento=fechaDeNacimiento;
    	this.obraSocial=obraSocial;
    	this.numeroAfiliado=numeroAfiliado;
    	this.grupoSanguineo=grupoSanguineo;
    	this.factor=factor;
    	this.nombreTutor=nombreTutor;
    	this.domicilio=domicilio;
    	this.telefono=telefono;
    	this.nombreEmergencia=nombreEmergencia;
    	this.apellidoEmergencia=apellidoEmergencia;
    	this.domicilioEmergencia=domicilioEmergencia;
    	this.telefonoEmergencia=telefonoEmergencia;
    	this.celularEmergencia=celularEmergencia;
    	this.sarampion=sarampion;
    	this.hepatitis=hepatitis;
    	this.paperas=paperas;
    	this.poliomelitis=poliomelitis;
    	this.tosConvulsa=tosConvulsa;
    	this.varicela=varicela;
    	this.escarlatina=escarlatina;
    	this.eruptiva=eruptiva;
    	this.rubeola=rubeola;
    	this.epilepsia=epilepsia;
    	this.sinusitis=sinusitis;
    	this.otraInfo=otraInfo;
    	
    	this.asma=asma;
    	this.bronquitis=bronquitis;
    	this.resfrio=resfrio;
    	this.afeccionesOido=afeccionesOido;
    	this.afeccionesNariz=afeccionesNariz;
    	this.afeccionesOjo=afeccionesOjo;
    	this.convulsiones=convulsiones;
    	this.sonambulismo=sonambulismo;
    	this.desmayo=desmayo;
        this.constipaciones=constipacion;
        this.hiv=hiv;
        this.otraInfoPropenso=otraInfoPropenso;
    	
        this.antitetanica=antitetanica;
    	this.antidiferica=antidiferica;
    	this.antivariolica=antivariolica;
    	this.antipoliomielitica=antipoliomielitica;
    	this.antituberculosa=antituberculosa;
    	this.antiofidica=antiofidica;
    	this.antitifidica=antitifidica;
    	this.apendicitis=apendicitis;
    	this.amigdalitis=amigdalitis;
    	this.hernia=hernia;
    	this.otraInfoQuirurgica=otraInfoQuirurgica;
    	
    	this.comida=comida;
    	this.medicamentos=medicamentos;
    	this.antibioticos=antibioticos;
    	this.picaduraInsectos=picaduraInsectos;
    	this.polen=polen;
    	this.plumas=plumas;
    	this.otraInfoAlergias=otraInfoAlergias;
    	
    	this.esguince=esguince;
    	this.fractura=fractura;
    	this.otraInfoTraumatologica=otraInfoTraumatologica;
    	this.tomaAlgunMedicamento=tomaAlgunMedicamento;
    	this.cualMedicamento=cualMedicamento;
    	this.sigueAlgunTratamiento=sigueAlgunTratamiento;
    	this.cualTratamiento=cualTratamiento;
    	this.problemasDeQuemaduras=problemasDeQuemaduras;    	
    	this.cualRegimenAlimenticio=cualRegimenAlimenticio;    	
    	
    }
    
    public void setId(String id)
    {
    	this.id_fichamedica=id;
    }
    public String getId()
    {
    	return id_fichamedica;
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

	
    
    public void setFechaDeNacimiento(String fechaDeNacimiento)
	{
		this.fechaDeNacimiento=fechaDeNacimiento;
		
	}
	
	public String getFechaDeNacimiento()
	{
		return fechaDeNacimiento;
	}
	
	public void setObraSocial(String obraSocial)
	{
		this.obraSocial=obraSocial;
	}
	
	public String getObraSocial()
	{
		return obraSocial;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

	public String getNumeroAfiliado() {
		return numeroAfiliado;
	}

	public void setNumeroAfiliado(String numeroAfiliado) {
		this.numeroAfiliado = numeroAfiliado;
	}

	public String getGrupoSanguineo() {
		return grupoSanguineo;
	}

	public void setGrupoSanguineo(String grupoSanguineo) {
		this.grupoSanguineo = grupoSanguineo;
	}

	public String getFactor() {
		return factor;
	}

	public void setFactor(String factor) {
		this.factor = factor;
	}

	public String getNombreTutor() {
		return nombreTutor;
	}

	public void setNombreTutor(String nombreTutor) {
		this.nombreTutor = nombreTutor;
	}

	public String getDomicilio() {
		return domicilio;
	}

	public void setDomicilio(String domicilio) {
		this.domicilio = domicilio;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getNombreEmergencia() {
		return nombreEmergencia;
	}

	public void setNombreEmergencia(String nombreEmergencia) {
		this.nombreEmergencia = nombreEmergencia;
	}

	public String getApellidoEmergencia() {
		return apellidoEmergencia;
	}

	public void setApellidoEmergencia(String apellidoEmergencia) {
		this.apellidoEmergencia = apellidoEmergencia;
	}

	public String getDomicilioEmergencia() {
		return domicilioEmergencia;
	}

	public void setDomicilioEmergencia(String domicilioEmergencia) {
		this.domicilioEmergencia = domicilioEmergencia;
	}

	public String getTelefonoEmergencia() {
		return telefonoEmergencia;
	}

	public void setTelefonoEmergencia(String telefonoEmergencia) {
		this.telefonoEmergencia = telefonoEmergencia;
	}

	public String getCelularEmergencia() {
		return celularEmergencia;
	}

	public void setCelularEmergencia(String celularEmergencia) {
		this.celularEmergencia = celularEmergencia;
	}

	public String getSarampion() {
		return sarampion;
	}

	public void setSarampion(String sarampion) {
		this.sarampion = sarampion;
	}

	public String getHepatitis() {
		return hepatitis;
	}

	public void setHepatitis(String hepatitis) {
		this.hepatitis = hepatitis;
	}

	public String getPaperas() {
		return paperas;
	}

	public void setPaperas(String paperas) {
		this.paperas = paperas;
	}

	public String getPoliomelitis() {
		return poliomelitis;
	}

	public void setPoliomelitis(String poliomelitis) {
		this.poliomelitis = poliomelitis;
	}

	public String getTosConvulsa() {
		return tosConvulsa;
	}

	public void setTosConvulsa(String tosConvulsa) {
		this.tosConvulsa = tosConvulsa;
	}

	public String getVaricela() {
		return varicela;
	}

	public void setVaricela(String varicela) {
		this.varicela = varicela;
	}

	public String getEscarlatina() {
		return escarlatina;
	}

	public void setEscarlatina(String escarlatina) {
		this.escarlatina = escarlatina;
	}

	public String getEruptiva() {
		return eruptiva;
	}

	public void setEruptiva(String eruptiva) {
		this.eruptiva = eruptiva;
	}

	public String getRubeola() {
		return rubeola;
	}

	public void setRubeola(String rubeola) {
		this.rubeola = rubeola;
	}

	public String getEpilepsia() {
		return epilepsia;
	}

	public void setEpilepsia(String epilepsia) {
		this.epilepsia = epilepsia;
	}

	public String getSinusitis() {
		return sinusitis;
	}

	public void setSinusitis(String sinusitis) {
		this.sinusitis = sinusitis;
	}

	public String getOtraInfo() {
		return otraInfo;
	}

	public void setOtraInfo(String otraInfo) {
		this.otraInfo = otraInfo;
	}

	public String getAsma() {
		return asma;
	}

	public void setAsma(String asma) {
		this.asma = asma;
	}

	public String getBronquitis() {
		return bronquitis;
	}

	public void setBronquitis(String bronquitis) {
		this.bronquitis = bronquitis;
	}

	public String getResfrio() {
		return resfrio;
	}

	public void setResfrio(String resfrio) {
		this.resfrio = resfrio;
	}

	public String getAfeccionesOido() {
		return afeccionesOido;
	}

	public void setAfeccionesOido(String afeccionesOido) {
		this.afeccionesOido = afeccionesOido;
	}

	public String getAfeccionesNariz() {
		return afeccionesNariz;
	}

	public void setAfeccionesNariz(String afeccionesNariz) {
		this.afeccionesNariz = afeccionesNariz;
	}

	public String getAfeccionesOjo() {
		return afeccionesOjo;
	}

	public void setAfeccionesOjo(String afeccionesOjo) {
		this.afeccionesOjo = afeccionesOjo;
	}

	public String getConvulsiones() {
		return convulsiones;
	}

	public void setConvulsiones(String convulsiones) {
		this.convulsiones = convulsiones;
	}

	public String getSonambulismo() {
		return sonambulismo;
	}

	public void setSonambulismo(String sonambulismo) {
		this.sonambulismo = sonambulismo;
	}

	public String getDesmayo() {
		return desmayo;
	}

	public void setDesmayo(String desmayo) {
		this.desmayo = desmayo;
	}

	public String getConstipaciones() {
		return constipaciones;
	}

	public void setConstipaciones(String constipaciones) {
		this.constipaciones = constipaciones;
	}

	public String getHiv() {
		return hiv;
	}

	public void setHiv(String hiv) {
		this.hiv = hiv;
	}

	public String getOtraInfoPropenso() {
		return otraInfoPropenso;
	}

	public void setOtraInfoPropenso(String otraInfoPropenso) {
		this.otraInfoPropenso = otraInfoPropenso;
	}

	public String getAntitetanica() {
		return antitetanica;
	}

	public void setAntitetanica(String antitetanica) {
		this.antitetanica = antitetanica;
	}

	public String getAntidiferica() {
		return antidiferica;
	}

	public void setAntidiferica(String antidiferica) {
		this.antidiferica = antidiferica;
	}

	public String getAntivariolica() {
		return antivariolica;
	}

	public void setAntivariolica(String antivariolica) {
		this.antivariolica = antivariolica;
	}

	public String getAntipoliomielitica() {
		return antipoliomielitica;
	}

	public void setAntipoliomielitica(String antipoliomielitica) {
		this.antipoliomielitica = antipoliomielitica;
	}

	public String getAntituberculosa() {
		return antituberculosa;
	}

	public void setAntituberculosa(String antituberculosa) {
		this.antituberculosa = antituberculosa;
	}

	public String getAntiofidica() {
		return antiofidica;
	}

	public void setAntiofidica(String antiofidica) {
		this.antiofidica = antiofidica;
	}

	public String getAntitifidica() {
		return antitifidica;
	}

	public void setAntitifidica(String antitifidica) {
		this.antitifidica = antitifidica;
	}

	public String getApendicitis() {
		return apendicitis;
	}

	public void setApendicitis(String apendicitis) {
		this.apendicitis = apendicitis;
	}

	public String getAmigdalitis() {
		return amigdalitis;
	}

	public void setAmigdalitis(String amigdalitis) {
		this.amigdalitis = amigdalitis;
	}

	public String getHernia() {
		return hernia;
	}

	public void setHernia(String hernia) {
		this.hernia = hernia;
	}

	public String getOtraInfoQuirurgica() {
		return otraInfoQuirurgica;
	}

	public void setOtraInfoQuirurgica(String otraInfoQuirurgica) {
		this.otraInfoQuirurgica = otraInfoQuirurgica;
	}

	public String getComida() {
		return comida;
	}

	public void setComida(String comida) {
		this.comida = comida;
	}

	public String getMedicamentos() {
		return medicamentos;
	}

	public void setMedicamentos(String medicamentos) {
		this.medicamentos = medicamentos;
	}

	public String getAntibioticos() {
		return antibioticos;
	}

	public void setAntibioticos(String antibioticos) {
		this.antibioticos = antibioticos;
	}

	public String getPicaduraInsectos() {
		return picaduraInsectos;
	}

	public void setPicaduraInsectos(String picaduraInsectos) {
		this.picaduraInsectos = picaduraInsectos;
	}

	public String getPolen() {
		return polen;
	}

	public void setPolen(String polen) {
		this.polen = polen;
	}

	public String getPlumas() {
		return plumas;
	}

	public void setPlumas(String plumas) {
		this.plumas = plumas;
	}

	public String getOtraInfoAlergias() {
		return otraInfoAlergias;
	}

	public void setOtraInfoAlergias(String otraInfoAlergias) {
		this.otraInfoAlergias = otraInfoAlergias;
	}

	public String getEsguince() {
		return esguince;
	}

	public void setEsguince(String esguince) {
		this.esguince = esguince;
	}

	public String getFractura() {
		return fractura;
	}

	public void setFractura(String fractura) {
		this.fractura = fractura;
	}

	public String getOtraInfoTraumatologica() {
		return otraInfoTraumatologica;
	}

	public void setOtraInfoTraumatologica(String otraInfoTraumatologica) {
		this.otraInfoTraumatologica = otraInfoTraumatologica;
	}

	public String getTomaAlgunMedicamento() {
		return tomaAlgunMedicamento;
	}

	public void setTomaAlgunMedicamento(String tomaAlgunMedicamento) {
		this.tomaAlgunMedicamento = tomaAlgunMedicamento;
	}

	public String getCualMedicamento() {
		return cualMedicamento;
	}

	public void setCualMedicamento(String cualMedicamento) {
		this.cualMedicamento = cualMedicamento;
	}

	public String getSigueAlgunTratamiento() {
		return sigueAlgunTratamiento;
	}

	public void setSigueAlgunTratamiento(String sigueAlgunTratamiento) {
		this.sigueAlgunTratamiento = sigueAlgunTratamiento;
	}

	public String getCualTratamiento() {
		return cualTratamiento;
	}

	public void setCualTratamiento(String cualTratamiento) {
		this.cualTratamiento = cualTratamiento;
	}

	public String getProblemasDeQuemaduras() {
		return problemasDeQuemaduras;
	}

	public void setProblemasDeQuemaduras(String problemasDeQuemaduras) {
		this.problemasDeQuemaduras = problemasDeQuemaduras;
	}

	public String getCualRegimenAlimenticio() {
		return cualRegimenAlimenticio;
	}

	public void setCualRegimenAlimenticio(String cualRegimenAlimenticio) {
		this.cualRegimenAlimenticio = cualRegimenAlimenticio;
	}

	
	

	
	
}
