package com.ipartek.formacion.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class helloController
 */
@WebServlet("/ejemplo1")
public class helloController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String TETERA = "soy una tetera";
	private static final String USUARIO = "pepe";
	private static final String CONTRASENA = "123456";

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

			out.print("<html lang=\"es\">");
			out.print("<head>");
			out.print("<meta charset=\"utf-8\">");
			out.print("<title>Título del sitio</title>");
			out.print("</head>");
			out.print("<body>");
			out.print("<h1>Página principal de tuHost</h1>");
			out.print("<ol>");
			out.print("<li>Tu navegador es : " + userAgent + "</li>");
			out.print("<li>Version : " + http + "</li>");
			out.print("<li>Tu nombre es : " + nombre + "</li>");

			if (userAgent.contains("Mobile")) {
				out.print("<li>Eres un Movil</li>");
			} else {
				out.print("<li>Eres un Navegador</li>");
			}

			out.print("</body>");
			out.print("<html>");
		} else if (TETERA.equals(nombre)) {
			//si el usuario es "soy una tetera"
			// http://localhost:8080/helloweb/ejemplo1?nombre=soy%20una%20tetera
			
			//response.setStatus(418); // para sacar errores (error de tetera)
			
			// si diseñamos un html salda este por pantalla
			out.print("<h1>Error de tetera</h1>");
			out.print("<img src='https://image.businessinsider.com/598e2c9fb0e0b51d008b4710?width=1200&format=jpeg' alt='imagen de tetera' >");
		} else {

			response.setStatus(401);// para sacar errores (no autorizado)
		}
		out.flush();

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
