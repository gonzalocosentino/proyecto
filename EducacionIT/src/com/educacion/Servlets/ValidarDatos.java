package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

import com.educacionit.entidades.*;
import com.educacionit.BaseDeDatos.*;

/**
 * Servlet implementation class ValidarDatos
 */
@WebServlet("/ValidarDatos")
public class ValidarDatos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidarDatos() {
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
		String mail=request.getParameter("mail");
		String password=DigestUtils.md5Hex(request.getParameter("password"));
		
		
		try
		{
			boolean autentificacion=AdmiPersonaDAO.autentificacion(mail, password);
			if(autentificacion != false)
			{
				Persona user=AdmiPersonaDAO.nombreusuario(mail);
				HttpSession session=request.getSession();
				session.setAttribute("mail", mail);
				session.setAttribute("user",user);
				Cookie userName=new Cookie("mail",mail);
				response.addCookie(userName);
				request.getRequestDispatcher("/admin-entrenador/informe-semanal/").forward(request, response);
			}
			else
			{
				request.setAttribute("mensaje", autentificacion);
				request.getRequestDispatcher("admin-entrenador/index.jsp").forward(request, response);
			}
			
		}catch(Exception e)
		{
			
		}
	}

	
}


