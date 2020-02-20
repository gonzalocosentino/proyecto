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
 * Servlet implementation class EditarFechaCarnet
 */
@WebServlet("/EditarFechaCarnet")
public class EditarFechaCarnet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarFechaCarnet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("IdCliente");
		request.setAttribute("mensaje",id);
		request.getRequestDispatcher("listado-entrenadores/editarfechacarnet.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String fechacarnet=request.getParameter("fechacarnet");
		
		PrintWriter out=response.getWriter();
		
		out.append(id);
		
		try
		{
			
			boolean actualizarfechacarnet=EntrenadorDAO.actulizarfechacarnet(id, fechacarnet);
			if(actualizarfechacarnet)
			{
				request.getRequestDispatcher("admin-entrenador/listado-entrenadores/index.jsp").forward(request, response);
			}
			else
			{
				request.getRequestDispatcher("listado-entrenadores/editarfechacarnet.jsp").forward(request, response);
			}
		}catch(Exception e)
		{
			
		}
		
		
	}

}
