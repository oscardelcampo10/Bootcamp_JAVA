package com.ipartek.formacion.controller.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.DispatcherType;


import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

import org.apache.log4j.Logger;
import org.omg.CORBA.Request;

import com.ipartek.formacion.listener.ContadorSesionesListener;

/**
 * Servlet Filter implementation class SeguridadFilter
 */
@WebFilter(dispatcherTypes = {
		DispatcherType.REQUEST, 
		DispatcherType.FORWARD, 
		DispatcherType.INCLUDE, 
		DispatcherType.ERROR
}
			, urlPatterns = { "/private/*" })
public class SeguridadFilter implements Filter {

	private final static Logger LOG = Logger.getLogger(ContadorSesionesListener.class);
    /**
     * Default constructor. 
     */
    public SeguridadFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse res = (HttpServletResponse)response;
		
		LOG.warn("Logeo no permitido");
		LOG.debug("RequestURL " + req.getRequestURL() );
		LOG.debug("RequestURI " + req.getRequestURI() );
		LOG.debug("Protocolo HTTP " + req.getProtocol() );
		LOG.debug("HTTP RemoteAddr " + req.getRemoteAddr() );
		LOG.debug("HTTP RemoteHost " + req.getRemoteHost() );
		LOG.debug("Navegador " + req.getHeader("User-Agent") );


		Map parametosMap = req.getParameterMap();
		
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("usuarioLogeado") == null)
		{
			
			LOG.warn("intentan entrar sin logearse");
			
		} else {
			
			//Dejamos continuar.
			// pass the request along the filter chain.
			chain.doFilter(request, response);
		}
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		LOG.trace("init");
		
	}

}
