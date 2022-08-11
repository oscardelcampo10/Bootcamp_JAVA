package org.mc.fho.rest;

import com.google.gson.Gson;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ws.rs.DefaultValue;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.mc.fho.controller.ControllerPreregistro;
import org.mc.fho.model.Preregistro;

/**
 *
 * @author Sergio Alba Arguello
 */
@Path("preRegistro")
public class RestPreregistro {
    
    /**
     *
     * @param id
     * @param nombre
     * @param apellidoPaterno
     * @param apellidoMaterno
     * @param fechaNacimiento
     * @param email
     * @param telefono
     * @param sexo
     * @param tipoSangre
     * @param cantidad
     * @param ine
     * @return
     */
    @Path("save")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response save(@FormParam("idPreregistro")int id,
            @FormParam("nombre") String nombre,
            @FormParam("apellidoPaterno") String apellidoPaterno,
            @FormParam("apellidoMaterno") String apellidoMaterno,
            @FormParam("fechaNacimiento") String fechaNacimiento,
            @FormParam("email") String email,
            @FormParam("telefono") String telefono,
            @FormParam("sexo") String sexo,
            @FormParam("tipoSangre") String tipoSangre,
            @FormParam("cantidad") double cantidad,
            @FormParam("ine") String ine) {

        ControllerPreregistro cp = new ControllerPreregistro();        
        String out = null;
        Preregistro p = new Preregistro();

        try {
            
                p.setId(id);
                p.setNombre(nombre);
                p.setApellidoPaterno(apellidoPaterno);
                p.setApellidoMaterno(apellidoMaterno);
                p.setFechaNacimiento(fechaNacimiento);
                p.setEmail(email);
                p.setTelefono(telefono);
                p.setSexo(sexo);
                p.setTipoSangre(tipoSangre);
                p.setCantidad(cantidad);
                p.setIne(ine);
                
                System.out.println(p.getId());

                if (p.getId() == 0) {
                    cp.insert(p);

                } else {
                    cp.update(p);
                }
                out = new Gson().toJson(p);            

        } catch (Exception e) {
            // Imprimimos el Error en la consola del servidor:
            e.printStackTrace();
            out = "{\"error\":\"¡No se ha seleccionado ningún registro de material!\"}";
        }
        return Response.status(Response.Status.OK).entity(out).build();
    }

    @Path("getAll")
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAll(@QueryParam("filtro") @DefaultValue("") String filtro) {
        ControllerPreregistro cp = new ControllerPreregistro();
        List<Preregistro> preregistros = null;
        String out = null;

        try {
            preregistros = cp.getAll(filtro);
            out = new Gson().toJson(preregistros);
        } catch (Exception ex) {
            Logger.getLogger(RestPreregistro.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Response.status(Response.Status.OK).entity(out).build();
    }
}
