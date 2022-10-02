package com.protalento.exceptions;

import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/**
 * se encarga de devolver un html en caso de error
 */
public class ExceptionGenericService implements ExceptionMapper<Throwable> {
	private static Logger logger = LogManager.getLogger();

	public Response toResponse(Throwable exception) {
		logger.error(exception);
		return Response.serverError().type(MediaType.TEXT_HTML)
				.entity("<h1>Error en el servicio, intente mas tarde</h1><br><p>" + exception.getMessage() + "</p>")
				.build();
	}

}
