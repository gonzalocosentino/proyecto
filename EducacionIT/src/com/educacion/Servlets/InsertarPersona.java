package com.educacion.Servlets;


import com.educacionit.BaseDeDatos.PersonaDAO;
import com.educacionit.entidades.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertarPersona
 */
@WebServlet("/InsertarPersona")
public class InsertarPersona extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarPersona() {
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
		// TODO Auto-generated method stub
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String id=UUID.randomUUID().toString();
		String correo=request.getParameter("correo");
		String celular=request.getParameter("celular");
		
		
		
		Persona persona =new Persona(id,nombre,apellido,correo,celular);
		
		try
		{
			PersonaDAO.Insertarpersona(persona);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
