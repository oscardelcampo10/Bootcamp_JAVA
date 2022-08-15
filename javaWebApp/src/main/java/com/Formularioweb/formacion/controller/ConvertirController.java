package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConvertirController
 */
@WebServlet("/convertir")
public class ConvertirController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final double METROS_PIES=3.28084;
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		doPost(request, response);
	}

	/*
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 * response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			double num = Double.parseDouble(request.getParameter("numMetros"));
			double pies = (num * METROS_PIES);

			request.setAttribute("pies", pies);

		} catch (Exception e) {
			request.setAttribute("mensaje", "El caracter introducido no es correcto.");
		} finally {
			
			request.setAttribute("numMetros","numMetros");
			//ir a vista
			request.getRequestDispatcher("Ejemplos/jsp/conversor.jsp").forward(request, response);
		}

	}//end doPost
}
