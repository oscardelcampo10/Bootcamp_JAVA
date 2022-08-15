package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class FormCheckController
 */
@WebServlet("/FormCheck")
public class FormCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// Declaramos el Logger para poder recopilar informacion de errores.
	private final static Logger LOG = Logger.getLogger(FormCheckController.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//recibimos parametros nombre y email
		String nombre = request.getParameter("nombre");
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		//el siguiente parametro viene en forma de ArrayList
		String deportesfav[] = request.getParameterValues("deportes");
		
		try {
			
			int cont = ((request.getParameterValues("deportes")) == null) ? 0 : request.getParameterValues("deportes").length;
			
			if(deportesfav != null && deportesfav.length >= 4)
			{
				request.setAttribute("nombre", nombre);
				request.setAttribute("email", email);
				request.setAttribute("sexo", sexo);
				request.setAttribute("contador", cont);
				request.setAttribute("deportesfav", deportesfav);
				
				request.getRequestDispatcher("Ejemplos/jsp/formuCheck.jsp").forward(request, response);
				
			} else {
				String mensaje = "Debes elegir minimo 4 deportes!!";
				
				request.setAttribute("mensaje", mensaje);
				request.setAttribute("nombre", nombre);
				request.setAttribute("email", email);
				request.setAttribute("sexo", sexo);
				request.setAttribute("contador", cont);
				request.getRequestDispatcher("Ejemplos/jsp/formuCheck.jsp").forward(request, response);
			}
		} catch (Exception e) {
			LOG.error(e);
			
		}
		
	}

}
