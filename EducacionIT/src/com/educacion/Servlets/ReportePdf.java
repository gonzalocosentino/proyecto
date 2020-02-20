package com.educacion.Servlets;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.Calendar;

import com.educacionit.BaseDeDatos.*;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


/**
 * Servlet implementation class ReportePdf
 */
@WebServlet("/ReportePdf")
public class ReportePdf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportePdf() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	 response.setContentType("application/pdf");
   	 OutputStream out= response.getOutputStream();
   	 Connection con=null;
   	 PreparedStatement ps=null;
   	 ResultSet rs=null;
   	 Document document=new Document();
   	 Font font=new Font();
	 Calendar calendar=Calendar.getInstance();
   	 int anio=calendar.get(Calendar.YEAR);
   	 int mes=calendar.get(Calendar.MONTH)+1;
   	 int dia=calendar.get(Calendar.DATE);
   	 int dia_semana=calendar.get(Calendar.WEEK_OF_MONTH);
   	 String fecha=anio+"-"+mes+"-"+dia;
   	 String si="si";
   try
   	{
   		try
   		{
   			con=AdministradorDeConexion.obtenerConexion();
   			
   		}catch(Exception e)
   		{
   			e.printStackTrace();
   		}
   		
   		PdfWriter.getInstance(document, out);
   		
   		Image imagen=Image.getInstance("file:///C:/Users/Gonzalo%20Cosentino/Desktop/java/EducacionIT/WebContent/logoyca.jpg");
   		imagen.setAlignment(Image.MIDDLE);   		
   		document.open(); 
   		document.add(imagen);
   		document.add(new Paragraph("Fecha de Creación: "+fecha));
   		document.add(new Paragraph("\n"));
   		String sql="SELECT * FROM informe WHERE dia_semana_mes=? AND anio=? AND problema=? ORDER BY prioridad ASC ";
   		ps=con.prepareStatement(sql);
   		ps.setInt(1, dia_semana);
   		ps.setInt(2, anio);
   		ps.setString(3, si);
   		rs=ps.executeQuery();
   		PdfPTable tabla=new PdfPTable(8);
   		tabla.setWidthPercentage(100);
   		tabla.addCell(new Paragraph("Fecha",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		tabla.addCell(new Paragraph("Nombre",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		tabla.addCell(new Paragraph("Apellido",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		tabla.addCell(new Paragraph("Categoria",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		tabla.addCell(new Paragraph("Numero Bote",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		tabla.addCell(new Paragraph("Tipo De Problema",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		tabla.addCell(new Paragraph("Descripción",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		tabla.addCell(new Paragraph("Prioridad",FontFactory.getFont("ariel", 12, BaseColor.BLUE)));
   		
   		
   		while(rs.next())
   		{
   			tabla.addCell(rs.getString("fecha"));
   			tabla.addCell(rs.getString("nombre").toUpperCase().charAt(0)+rs.getString("nombre").substring(1));
   			tabla.addCell(rs.getString("apellido").toUpperCase().charAt(0)+rs.getString("apellido").substring(1));
   			tabla.addCell(rs.getString("categoria"));
   			tabla.addCell(rs.getString("numerobote"));
   			tabla.addCell(rs.getString("tipodeproblema"));
   			tabla.addCell(rs.getString("descripcion"));
   			if(rs.getString("prioridad").equals("alta"))
   			{
   				
   			tabla.addCell(new Paragraph(rs.getString("prioridad"),FontFactory.getFont("ariel", 12, BaseColor.RED)));
   			}
   			else
   			{
   				tabla.addCell(rs.getString("prioridad"));
   			}
   			
   		}
   		
   		document.add(tabla);
   		
   		 		
   		
   		document.close();
   	}catch(Exception e)
   	{
   		
   		
   	}
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
