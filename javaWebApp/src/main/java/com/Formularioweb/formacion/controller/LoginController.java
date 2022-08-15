package com.ipartek.formacion.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vista = "";
		
		//parametros del fomr
		String nombre = (String)request.getParameter("usuario");
		String pass = (String)request.getParameter("contrasena");
		String idioma = (String)request.getParameter("idioma");
		String recordar = (String)request.getParameter("recuerdame");
		boolean logok = false;
		
		if((nombre).equals("administrador") && pass.equalsIgnoreCase("administrador")) {
			//Recuperar(crear) sesion del usuario.
			HttpSession session = request.getSession();
			session.setAttribute("usuarioLogeado", nombre);
			session.setAttribute("idioma", idioma);
			session.setMaxInactiveInterval(60*5);
			
			String base = request.getContextPath();
			response.sendRedirect( base + "/private/home");
			
			//request.getRequestDispatcher("private/index.jsp").forward(request, response);
		} else if((nombre).equals("admin") && pass.equalsIgnoreCase("admin123")) {
			
				logok=true;
				
				//Recuperar(crear) sesion del usuario.
				HttpSession session = request.getSession();
				session.setAttribute("usuarioLogeado", nombre);
				session.setAttribute("idioma", idioma);
				session.setMaxInactiveInterval(60*5);
				
				
				 switch(idioma)
			        { 
			            case "es": 
			            	if(logok)
			        		{
			        			if(recordar!=null) {
			        				request.setAttribute("mensaje", "RECORDAR!! te recordaremos!");
			        				request.getRequestDispatcher("Ejemplos/jsp/login-exito.jsp").forward(request, response);
			        			}
			        		}
			        		else {
			        			
			        			request.setAttribute("mensaje", "Error!! ese no es el usuario o contraseña Administrador!");
			        			request.getRequestDispatcher("Ejemplos/jsp/login.jsp").forward(request, response);
			        		}
			                break; 
			            case "eus": 
			            	if(logok)
			        		{
			        			if(recordar!=null) {
			        				request.setAttribute("mensaje", "GOGORATU!! gogoratuko zaitugu!");
			        				request.getRequestDispatcher("Ejemplos/jsp/login-exito.jsp").forward(request, response);
			        			}
			        		}
			        		else {
			        			request.setAttribute("mensaje", "Error!! Hori ez da administratzailearen kontua!");
			        			request.getRequestDispatcher("Ejemplos/jsp/login.jsp").forward(request, response);
			        		}
			                break; 
			            case "en": 
			            	if(logok)
			        		{
			        			if(recordar!=null) {
			        				request.setAttribute("mensaje", "REMEMBER!! I going to remenber your acount!");
			        				request.getRequestDispatcher("Ejemplos/jsp/login-exito.jsp").forward(request, response);
			        			}
			        		}
			        		else {
			        			request.setAttribute("mensaje", "Error!! That's not the administrator account.");
			        			request.getRequestDispatcher("Ejemplos/jsp/login.jsp").forward(request, response);
			        		}
			                break; 
			                
			            default: 
			                break;
			        }
			}else {
			
				request.setAttribute("mensaje", "Acceso denegado!!");
				request.getRequestDispatcher("Ejemplos/jsp/login.jsp").forward(request, response);
			}
	}
}
