package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.educacionit.BaseDeDatos.InformeBoteDAO;
import com.educacionit.entidades.PrioridadInforme;

/**
 * Servlet implementation class InsertarPrioridad
 */
@WebServlet("/InsertarPrioridad")
public class InsertarPrioridad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarPrioridad() {
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
		String idPrioridad=request.getParameter("id_informe");
		String prioridad=request.getParameter("prioridad");
		
		PrioridadInforme prioridadInforme=new PrioridadInforme(idPrioridad,prioridad);
		
		try
		{
			
			boolean correcto=InformeBoteDAO.ActualizarPrioridad(prioridadInforme);
			if(correcto != false)
			{
				request.getRequestDispatcher("/admin-entrenador/informe-semanal/index.jsp").forward(request, response);
				
			}else
			{
				out.print("Error. Contactar al Administrador");
				
				
				
			}
		}catch(Exception e)
		{
			
		}
		
	}

}
