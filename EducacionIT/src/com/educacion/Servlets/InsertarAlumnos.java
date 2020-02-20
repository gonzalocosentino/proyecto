package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educacionit.BaseDeDatos.AlumnosDAO;
import com.educacionit.entidades.Alumnos;

/**
 * Servlet implementation class InsertarAlumnos
 */
@WebServlet("/InsertarAlumnos")
public class InsertarAlumnos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarAlumnos() {
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
		String id=UUID.randomUUID().toString();
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		int dni=Integer.valueOf(request.getParameter("dni"));
	    String fechaNacimiento="20-20-2020";
	    String  fechaNacimientoDia=request.getParameter("fechaNacimientoDia");
	    String  fechaNacimientoMes=request.getParameter("fechaNacimientoMes");
	    String fechaNacimientoAnio=request.getParameter("fechaNacimientoAnio");
	    int edad=1;
	    String correo=request.getParameter("mail");
	    String celular=request.getParameter("celular");
	    String numeroSocio=request.getParameter("numero_socio");
	    String numeroDeVela=request.getParameter("numero_de_vela");
	    String categoria=request.getParameter("categoria");
	    /*DATOS DE INGRESO PADRE*/
	    String nombrePadre=request.getParameter("nombre_padre");
	    String apellidoPadre=request.getParameter("apellido_padre");
	    String mailPadre=request.getParameter("mail_padre");
	    String celularPadre=request.getParameter("celular_padre");
	    int dniPadre=Integer.valueOf(request.getParameter("dni_padre"));
	    String numeroSocioPadre=request.getParameter("numero_socio_padre");
	    String fechaNacimientoPadre=request.getParameter("fecha_nacimiento_padre");
	    /*DATOS DE INGRESO MADRE*/
	    String nombreMadre=request.getParameter("nombre_madre");
	    String apellidoMadre=request.getParameter("apellido_madre");
	    String mailMadre=request.getParameter("mail_madre");
	    String celularMadre=request.getParameter("celular_madre");
	    int dniMadre=Integer.valueOf(request.getParameter("dni_madre"));
	    String numeroSocioMadre=request.getParameter("numero_socio_madre");
	    String fechaNacimientoMadre=request.getParameter("fecha_nacimiento_madre");
	    
	    
	    Alumnos alumnos=new Alumnos(id,nombre,apellido,correo,celular,dni,fechaNacimiento,fechaNacimientoDia,fechaNacimientoMes,fechaNacimientoAnio,edad,
	    		numeroSocio,numeroDeVela,categoria,nombrePadre,apellidoPadre,mailPadre,celularPadre,dniPadre,numeroSocioPadre,fechaNacimientoPadre,nombreMadre,apellidoMadre,mailMadre,celularMadre,dniMadre,numeroSocioMadre,fechaNacimientoMadre);
	    try
	    {
	    	boolean correcto=AlumnosDAO.InsertarDatosAlumnos(alumnos);
	    	if(correcto != false)
	    	{
	    		out.print(correcto);
	    		request.setAttribute("correcto", correcto);
	    		request.getRequestDispatcher("/entrenadores/formulario-alumnos/index.jsp").forward(request, response);
	    	}
	    	else
	    	{
	    		out.print(correcto);
	    	}
	    }catch(Exception e)
	    {
	    	e.printStackTrace();
	    }
	    
	    
	}

}
