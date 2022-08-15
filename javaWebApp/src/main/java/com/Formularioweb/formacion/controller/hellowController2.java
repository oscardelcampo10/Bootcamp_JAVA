package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class hellowController2
 * 
 * Copia del helloController (ejemplo1) Vamos a realizar el mismo ejercicio que
 * el ejemplo1 pero con un JSP
 */
@WebServlet("/ejemplo2")
public class hellowController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String TETERA = "soy una tetera";
	private static final String USUARIO = "pepe";
	private static final String CONTRASENA = "123456";
	private static final String VISTA_RESUMEN = "Ejemplos/jsp/resumen.jsp";
	private static final String VISTA_TETERA = "Ejemplos/jsp/tetera.jsp";
	private static final String VISTA_NOAUTORIZAO = "Ejemplos/jsp/noAutorizado.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Peticion del cliente (request)
		String userAgent = request.getHeader("user-Agent");
		String http = request.getProtocol();
		String nombre = request.getParameter("nombre");
		String contrasena = request.getParameter("contrasena");

		// Esto es la respuesta (response)

		response.setContentType("text/html");
		response.setCharacterEncoding("uft-8");

		PrintWriter out = response.getWriter();// .append("Served at: ").append(request.getContextPath());

		if (USUARIO.equals(nombre) && CONTRASENA.equals(contrasena)) {// http://localhost:8080/helloweb/ejemplo1?nombre=pepe&contrasena=123456
			String eresMovil = "";
			if (userAgent.contains("Mobile")) {

				eresMovil = "Eres un : Movil.";
			} else {

				eresMovil = "Eres un : Navegador.";
			}

			request.setAttribute("userAgent", userAgent);
			request.setAttribute("http", http);
			request.setAttribute("eresMovil", eresMovil);
			request.setAttribute("nombre", nombre);
			request.setAttribute("contrasena", contrasena);

			request.getRequestDispatcher(VISTA_RESUMEN).forward(request, response);

		} else if (TETERA.equals(nombre)) {
			
			// si el usuario es "soy una tetera"
			// http://localhost:8080/helloweb/ejemplo1?nombre=soy%20una%20tetera

			// response.setStatus(418); // para sacar errores (error de tetera)

			// si diseñamos un html salda este por pantalla
			request.getRequestDispatcher(VISTA_TETERA).forward(request, response);

		} else {

			request.getRequestDispatcher(VISTA_NOAUTORIZAO).forward(request, response);
		}

		// Por defecto es una response code 200 (peticino correcta
		// (response.setStatus(401);))
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doGet(request, response);
	}

}
