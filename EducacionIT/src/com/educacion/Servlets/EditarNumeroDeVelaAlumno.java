package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educacionit.BaseDeDatos.AlumnosDAO;

/**
 * Servlet implementation class EditarNumeroDeVelaAlumno
 */
@WebServlet("/EditarNumeroDeVelaAlumno")
public class EditarNumeroDeVelaAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarNumeroDeVelaAlumno() {
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
		String numerodevela=request.getParameter("numerodevela");
		String id=request.getParameter("id");
		PrintWriter out=response.getWriter();
		
		try
		{
			boolean correcto=AlumnosDAO.updateNumeroDeVela(numerodevela, id);
			if(correcto != false)
			{
				request.getRequestDispatcher("/admin-entrenador/registro-alumnos").forward(request, response);
			}else
			{
				out.print("error");
				
			}
		}catch(Exception e)
		{
			e.printStackTrace();
			
		}
		
		
		
		
	}

}
