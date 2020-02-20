package com.educacion.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.educacionit.BaseDeDatos.InformeBoteDAO;
import com.educacionit.entidades.Entrenador;
import com.educacionit.entidades.InformeBote;

/**
 * Servlet implementation class InsertarInformeBote
 */
@WebServlet("/InsertarInformeBote")
public class InsertarInformeBote extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarInformeBote() {
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
		
		Calendar calendario=Calendar.getInstance();
		int anio=calendario.get(Calendar.YEAR);
		int mes=calendario.get(Calendar.MONTH)+1;
		int date=calendario.get(Calendar.DATE);
		LocalDate ahora=LocalDate.now();
		String id=UUID.randomUUID().toString();
		String numerogomon=request.getParameter("numerogomon");
		String problema=request.getParameter("problema");
		String tipodeproblema=request.getParameter("tipodeproblema");
		String descripcion=request.getParameter("descripcion");
		String fecha=(anio+"-"+mes+"-"+date);
		HttpSession session=request.getSession();
		Entrenador user=(Entrenador) session.getAttribute("user");
		String correo=user.getCorreo();
		InformeBote informebote=new InformeBote(id,correo,numerogomon,problema,tipodeproblema,descripcion,fecha, anio);
		
		PrintWriter out= response.getWriter();
		out.print(correo);
		try
		{
			
			boolean informe=InformeBoteDAO.autentificacionEntrenador(correo);
			
			if(informe != false)
			{
				
			
			String categoria=InformeBoteDAO.getCategoria(correo);
			String nombre=InformeBoteDAO.getNombre(correo);
			String apellido=InformeBoteDAO.getApellido(correo);
			boolean correcto=InformeBoteDAO.Insertarinforme(informebote,categoria,nombre,apellido,correo);
			request.setAttribute("mensajecorrecto",correcto);
			session.setAttribute("mensa", correcto);
			request.getRequestDispatcher("/entrenadores/registros-alumnos/").forward(request,response);
			
			}
			else
			{
				request.setAttribute("mensaje", informe);
				request.getRequestDispatcher("/informe-bote/").forward(request,response);
			}
		}catch(Exception e)
		{
		   e.printStackTrace();	
		   
		}
		
	}

}
