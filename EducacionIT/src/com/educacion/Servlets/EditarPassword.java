package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.codec.digest.DigestUtils;

import com.educacionit.BaseDeDatos.EntrenadorDAO;

/**
 * Servlet implementation class EditarPassword
 */
@WebServlet("/EditarPassword")
public class EditarPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditarPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String password=DigestUtils.md5Hex(request.getParameter("password"));
		PrintWriter out=response.getWriter(); 
		
		boolean validar=EntrenadorDAO.editarContrasenia(id, password);
		
		try
		{
			if(validar != false)
			{
			  request.setAttribute("mensajecorrecto", validar);
			  response.sendRedirect("admin-entrenador/listado-entrenadores");
			}
			else
			{
				
				out.println("Error");
				
			}
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}
