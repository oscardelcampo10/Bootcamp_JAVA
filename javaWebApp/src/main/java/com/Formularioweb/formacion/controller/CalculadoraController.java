package com.ipartek.formacion.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/sumar")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// recibir parametros del formulario,siempre los recive en format String.
			
			int op = Integer.parseInt(request.getParameter("operacion"));
			int num1 = Integer.parseInt(request.getParameter("op1"));
			int nume2 = Integer.parseInt(request.getParameter("op2"));
			int resultado=0;
			String opera="";
			
			switch (op) {
			  case 1:
				  resultado=num1+nume2;
			      opera="+";
			      break;
			  case 2:
				  resultado=num1-nume2;
				  opera="-";
				  break;
			  case 3:
				  resultado=num1*nume2;
				  opera="*";
				  break;
			  case 4:
				  if(nume2==0) {
					  request.setAttribute("mensaje", "division entre 0 es infinito.");
				  }
				  else {
				  resultado=num1/nume2;
				  opera="/";
				  }
				  break;
			}
			
			
			// enviar datos a la vista al JSP
			request.setAttribute("resultado", resultado);
			request.setAttribute("numero1",num1);
			request.setAttribute("numero2",nume2);
			request.setAttribute("operacion", opera);
			
		} catch (Exception e) {
			request.setAttribute("error", "Lo datos introducidos no son correctos");
			request.setAttribute("resultado", 0);//le pasamos ese atributo con valor 0 por que sinoo dara error
		}

		// ir a vista
		request.getRequestDispatcher("resultado.jsp").forward(request, response);

	}

}
