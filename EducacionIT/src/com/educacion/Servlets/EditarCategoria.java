package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educacionit.BaseDeDatos.EntrenadorDAO;

/**
 * Servlet implementation class EditarCategoria
 */
@WebServlet("/EditarCategoria")
public class EditarCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarCategoria() {
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
		String id=request.getParameter("id");
		String categoria=request.getParameter("categoria");
		PrintWriter out=response.getWriter();
		
		
		boolean validar=EntrenadorDAO.ActualizarCategoria(id, categoria);
		out.print(validar);
		try
		{
			if(validar != false)
			{
				request.getRequestDispatcher("/admin-entrenador/listado-entrenadores/index.jsp").forward(request, response);
			}else
			{
			   out.print("Error en la Base De Datos");
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
