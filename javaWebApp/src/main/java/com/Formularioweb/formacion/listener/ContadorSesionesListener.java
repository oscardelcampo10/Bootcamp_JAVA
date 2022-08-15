package com.ipartek.formacion.listener;
import org.apache.log4j.Logger;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import org.apache.log4j.Logger;

/**
 * Application Lifecycle Listener implementation class ContadorSesionesListener
 *
 */
@WebListener
public class ContadorSesionesListener implements HttpSessionAttributeListener {

	private final static Logger LOG = Logger.getLogger(ContadorSesionesListener.class);
	
  	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent event)  { 
    	
    	LOG.debug("attributeAdded " + event.getName() + " " + event.getValue() );
    	    	
    	if ( "usuarioLogeado".equals(event.getName()) ) {
    		//Recuento de usuarios logeados sumando usuario que se ha conectado.
			//recuperar del ambito de sesion el numero de usuario y aniadir el nuevo usuario.
    		ServletContext sc = event.getSession().getServletContext();
    		int num = (int)sc.getAttribute("numeroUsuariosConectados");    		
    		sc.setAttribute("numeroUsuariosConectados", ++num );
    		    		
    		//num = (num<0) ? 0 : num;
    	}
    	
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent event)  { 
         
    	LOG.debug("attributeRemoved " + event.getName() + " " + event.getValue() );
    	
    	if ( "usuarioLogeado".equals(event.getName()) ) {
        	
    		ServletContext sc = event.getSession().getServletContext();
    		//recuento de usuarios logeados restando usuario que sale de la aplicacion
    		//recuperar del ambito de sesion el numero de usuario y resta uno.
    		int num = (int)sc.getAttribute("numeroUsuariosConectados");    		
    		sc.setAttribute("numeroUsuariosConectados", --num );
    	}
    	
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent event)  {
    	
    	LOG.debug("attributeReplaced " + event.getName() + " " + event.getValue() );
    }
	
}
