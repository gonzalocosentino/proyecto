package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.educacionit.BaseDeDatos.EntrenadorDAO;
import com.educacionit.entidades.*;

/**
 * Servlet implementation class InsertarEntrenador
 */
@WebServlet("/InsertarEntrenador")
public class InsertarEntrenador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarEntrenador() {
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
		String nombre=request.getParameter("nombre");
		String apellido=request.getParameter("apellido");
		String correo=request.getParameter("correo");
		String celular=request.getParameter("celular");
        int dni=Integer.valueOf(request.getParameter("dni"));
		String fecha_nacimiento=request.getParameter("fechanacimiento");
		String fechaexpiracioncarnet=request.getParameter("fechaexpiracioncarnet");
		String categoria=request.getParameter("categoria");
		String password=DigestUtils.md5Hex( request.getParameter("password"));
		String id=UUID.randomUUID().toString();
		
		Entrenador entrenador=new Entrenador(id,nombre,apellido,correo,celular,dni,fecha_nacimiento,fechaexpiracioncarnet,categoria,password);
				
		
		try
		{
			
			EntrenadorDAO.Insertar(entrenador);
			request.getRequestDispatcher("/listado-entrenadores/").forward(request, response);
			
			
		}catch(Exception e)
		{
			
		}
	}

}
