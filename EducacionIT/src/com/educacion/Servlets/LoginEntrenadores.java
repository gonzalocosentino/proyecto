package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;

import com.educacionit.BaseDeDatos.EntrenadorDAO;
import com.educacionit.entidades.Persona;

/**
 * Servlet implementation class LoginEntrenadores
 */
@WebServlet("/LoginEntrenadores")
public class LoginEntrenadores extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginEntrenadores() {
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
		String mail=request.getParameter("mail");
		String password=DigestUtils.md5Hex(request.getParameter("password"));
		try
		{
			
			boolean validar=EntrenadorDAO.verificarentrenador(mail, password);
			
			
			if(validar != false)
			{
				Persona user=EntrenadorDAO.getDatosEntrenador(mail);
				HttpSession session=request.getSession();
				session.setAttribute("mail", mail);
				session.setAttribute("user", user);
				request.getRequestDispatcher("entrenadores/registros-alumnos").forward(request, response );
				
			}else
			{
				request.setAttribute("fall-login", validar);
				request.getRequestDispatcher("entrenadores/login-entrenadores/index.jsp").forward(request, response);
			}
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
