package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educacionit.BaseDeDatos.EntrenadorDAO;
import com.educacionit.entidades.Entrenador;

import java.util.*;
/**
 * Servlet implementation class EditarCorreo
 */
@WebServlet("/EditarCorreo")
public class EditarCorreo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarCorreo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("IdCliente");
		PrintWriter out= response.getWriter();
		request.setAttribute("mensaje",id);
		response.sendRedirect("admin-entrenador/listado-entrenadores");
		
		 
		
		
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String correo=request.getParameter("mail");
        PrintWriter out= response.getWriter();
		
		out.print(id);
		out.print(correo);
		
		boolean actualizarcorreo=EntrenadorDAO.actualizarcorreo(id,correo);
		
		if(actualizarcorreo)
		{
			request.getRequestDispatcher("/admin-entrenador/listado-entrenadores/index.jsp").forward(request, response);
		}
		else
		{
			
			out.print("error");
		}
		
		
	}

}
