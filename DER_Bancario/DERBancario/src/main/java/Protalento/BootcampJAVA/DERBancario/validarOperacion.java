package Protalento.BootcampJAVA.DERBancario;

import Beans.usuario;
import Dao.busquedas;
import Dao.insertar;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class validarOperacion extends HttpServlet{
	 /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        insertar grabar=new insertar();
        busquedas buscar=new busquedas();
        usuario user;
        boolean resultado=false;
        double monto=Double.parseDouble(request.getParameter("ui_slider_default_val"));
        String clave1=request.getParameter("clave_tarjeta1");
        String clave2=request.getParameter("clave_tarjeta2");
        String cliente=request.getParameter("cliente");
        String ctabancaria=request.getParameter("ctabancaria");
        String cuenta=request.getParameter("num_cuenta");
        String tipo="-";
        String servicio="Transaccion";
        user=buscar.consultar_claves(clave1, clave2);
        
        if (user!= null){
        resultado=grabar.RealizarOperacion(monto, tipo, servicio, cuenta, cliente, ctabancaria);
        if (resultado){
            response.sendRedirect("realizar_transaccion.jsp?ok=ok");
        }else{
            response.sendRedirect("realizar_transaccion.jsp?e=0");
        }
        }else{
        response.sendRedirect("realizar_transaccion.jsp?e=1");
        }
    
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
