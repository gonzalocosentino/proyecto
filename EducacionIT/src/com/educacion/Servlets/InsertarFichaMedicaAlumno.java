package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.educacionit.BaseDeDatos.AlumnosDAO;
import com.educacionit.entidades.FichaMedica;

/**
 * Servlet implementation class InsertarFichaMedicaAlumno
 */
@WebServlet("/InsertarFichaMedicaAlumno")
public class InsertarFichaMedicaAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarFichaMedicaAlumno() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		String id_fichamedica=UUID.randomUUID().toString();
	
		String nombre=request.getParameter("nombre");
		
		String apellido=request.getParameter("apellido");
		
		int dni=Integer.valueOf(request.getParameter("dni"));
	
		String fechaDeNacimiento=request.getParameter("fechaNacimiento");
		
		String obraSocial=request.getParameter("obraSocial");
		
		String numeroAfiliado=request.getParameter("numeroAfiliado");
		
		String grupoSanguineo=request.getParameter("grupoSanguineo");
		String factor=request.getParameter("factor");
		
		String nombreTutor=request.getParameter("nombreTutor");
		
		String domicilio=request.getParameter("domicilio");
	
		String telefono=request.getParameter("telefono");
	
		String nombreEmergencia=request.getParameter("nombreEmergencia");
		String apellidoEmergencia=request.getParameter("apellidoEmergencia");
		String domicilioEmergencia=request.getParameter("domicilioEmergencia");
		String telefonoEmergencia=request.getParameter("telefonoEmergencia");
		String celularEmergencia=request.getParameter("celularEmergencia");
		String sarampion=request.getParameter("sarampion");
		String hepatitis=request.getParameter("hepatitis");
		String paperas=request.getParameter("paperas");
		String poliomelitis=request.getParameter("poliomelitis");
		String tosConvulsa=request.getParameter("tosConvulsa");
		String varicela=request.getParameter("varicela");
		String escarlatina=request.getParameter("escarlatina");
		String eruptiva=request.getParameter("eruptiva");
		String rubeola=request.getParameter("rubeola");
		String epilepsia=request.getParameter("epilepsia");
		String sinusitis=request.getParameter("sinusitis");
		String otraInfo=request.getParameter("otraInfo");
	    String asma=request.getParameter("asma");
	    String bronquitis=request.getParameter("bronquitis");
	    String resfrio=request.getParameter("resfrio");
	    String afeccionesOido=request.getParameter("afeccionesDeOido");
        String afeccionesNariz=request.getParameter("afeccionesDeNariz");
        String afeccionesOjo=request.getParameter("afeccionesDeOjo");
        String convulsiones=request.getParameter("convulsion");
        String sonambulismo=request.getParameter("sonambulismo");
    	String desmayo=request.getParameter("desmayos");
    	String constipacion=request.getParameter("constipacion");
		String hiv=request.getParameter("hiv");
		String otraInfoPropenso=request.getParameter("otraInfoPropenso");
		String antitetanica=request.getParameter("antitetanica");
        String antidiferica=request.getParameter("antidiferica");
        String antivariolica=request.getParameter("antivariolica");
        String antipoliomielitica=request.getParameter("antipoliomielitica");
        String antituberculosa=request.getParameter("antituberculosa");
        String antiofidica=request.getParameter("antiofidica");
        String antitifidica=request.getParameter("antitifidica");
        String apendicitis=request.getParameter("apendicitis");
        String amigdalitis=request.getParameter("amigdalitis");
        String hernia=request.getParameter("hernia");
        String otraInfoQuirurgica=request.getParameter("otraInfoQuirurgica");
        String comida=request.getParameter("comida");
        String medicamentos=request.getParameter("medicamentos");
        String antibioticos=request.getParameter("antibioticos");
        String picaduraInsectos=request.getParameter("picaduraInsectos");
        String polen=request.getParameter("polen");
        String plumas=request.getParameter("plumas");
        String otraInfoAlergias=request.getParameter("otraInfoAlergias");
        String esguince=request.getParameter("esguince");
        String fractura=request.getParameter("fractura");
        String otraInfoTraumatologica=request.getParameter("otraInfoTraumatologica");
        String tomaAlgunMedicamento=request.getParameter("tomaAlgunMedicamento");
        String cualMedicamento=request.getParameter("cualMedicamento");
        String sigueAlgunTratamiento=request.getParameter("sigueAlgunTratamiento");
        String cualTratamiento=request.getParameter("cualTratamiento");
        String problemaDeQuemaduras=request.getParameter("problemasDeQuemaduras");
        String cualRegimenAlimenticio=request.getParameter("cualRegimenAlimenticio");
        
        
        FichaMedica fichamedica=new FichaMedica(id_fichamedica,nombre,apellido,dni,fechaDeNacimiento,obraSocial,numeroAfiliado,grupoSanguineo,factor,nombreTutor,domicilio,telefono,nombreEmergencia,apellidoEmergencia,domicilioEmergencia,telefonoEmergencia,celularEmergencia,sarampion,hepatitis,paperas,poliomelitis,tosConvulsa,varicela,escarlatina,eruptiva,rubeola,epilepsia,sinusitis,otraInfo,asma,bronquitis,resfrio,afeccionesOido,afeccionesNariz,afeccionesOjo,convulsiones,sonambulismo,desmayo,constipacion,hiv,otraInfoPropenso,antitetanica,antidiferica,antivariolica,antipoliomielitica,antituberculosa,antiofidica,antitifidica,apendicitis,amigdalitis,hernia,otraInfoQuirurgica,comida,medicamentos,antibioticos,picaduraInsectos,polen,plumas,otraInfoAlergias,esguince,fractura,otraInfoTraumatologica,tomaAlgunMedicamento,cualMedicamento,sigueAlgunTratamiento,cualTratamiento,problemaDeQuemaduras,cualRegimenAlimenticio);
       
        
        
        try
        {
        	
        	boolean existe=AlumnosDAO.ValidarAlumno(dni);
        	boolean existefichamedica=AlumnosDAO.ValidarAlumnoFichaMedica(dni);
        	if(existe != false)
        	{
        	     if(existefichamedica != true)
        	     {
        	
                 	boolean correcto=AlumnosDAO.InsertFichaMedicaAlumnos(fichamedica);
        	        if(correcto != false)
                    	{
        		         request.setAttribute("mensaje", correcto);
        		         request.getRequestDispatcher("/entrenadores/formulario-ficha-medica/index.jsp").forward(request, response);
        	           }
        	           else
        	            {
        		           
        		           request.setAttribute("error", correcto);
        		           request.getRequestDispatcher("entrenadores/formulario-ficha-medica/index.jsp").forward(request, response);
        	           }
        	      }
        	       else
        	        {
        	    	   request.setAttribute("mensajefichamedica", existefichamedica);
        	    	   request.getRequestDispatcher("entrenadores/formulario-ficha-medica/index.jsp").forward(request, response);
                 	}
        	}
        	else
        	{
        		request.setAttribute("mensajenoexiste", existe);
        		request.getRequestDispatcher("entrenadores/formulario-ficha-medica/index.jsp").forward(request, response);
        	}
        }catch(Exception e)
        {
        	e.printStackTrace();
        }
        
        
	}

}
