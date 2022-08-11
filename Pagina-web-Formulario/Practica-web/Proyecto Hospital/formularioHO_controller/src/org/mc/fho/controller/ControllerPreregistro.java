package org.mc.fho.controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.mc.fho.db.ConexionMySQL;
import org.mc.fho.model.Preregistro;

/**
 *
 * @author Sergio Alba Arguello
 */
public class ControllerPreregistro {

    int i = 8;
    String codigo = getRandomString(i);

    /**
     * Inserta un registro de Producto en la Base de Datos y devuelve el ID
     * generado.
     *
     * @param p
     * @return
     * @throws java.lang.Exception
     */
    public int insert(Preregistro p) throws Exception {
        //Se define la consulta SQL que realiza la inserción del registro:
        String sql = "INSERT INTO preregistro(nombre, apellidoPaterno, apellidoMaterno, fechaNacimiento, email, telefono, sexo, tipoSangre, cantidad, ine, codigo)"
                + "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        //Aqui guardaremos el id generado
        int idGenerado = -1;

        //Con este objeto nos vamos a conectar a la Base de Datos:
        ConexionMySQL connMySQL = new ConexionMySQL();

        //Abrimos la conexion de la base de datos:
        Connection conn = connMySQL.open();

        //  Con este objetoejecuitaremos la sentancia SQL que realiza 
        //  la insercion en la tabla. Debemos especificarle que queremos 
        // que nos devulva el ID que se generara al realizar la 
        // inserccion del registro.
        PreparedStatement pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

//        En este objeto guardaremos el resultado de la consulta,
//        la cual nos devolvera los ID`s que se generaron. En este
//        caso, solo generara un ID
        ResultSet rs = null;

        //Llenamos el valor de campo de la consulta SQL definida antes:
        pstmt.setString(1, p.getNombre());
        pstmt.setString(2, p.getApellidoPaterno());
        pstmt.setString(3, p.getApellidoMaterno());
        pstmt.setString(4, p.getFechaNacimiento());
        pstmt.setString(5, p.getEmail());
        pstmt.setString(6, p.getTelefono());
        pstmt.setString(7, p.getSexo());
        pstmt.setString(8, p.getTipoSangre());
        pstmt.setDouble(9, p.getCantidad());
        pstmt.setString(10, p.getIne());
        pstmt.setString(11, codigo);

        String mensaje = "Hola, Buen día, Sr/Sra: " + p.getNombre() + " " + p.getApellidoPaterno() + " " + p.getApellidoMaterno() + ".\n"
                + "\n"
                + "Por este medio confirmamos el registro realizado en la visita a la Expo-Maternidad por parte del Hospital Medica Campestre. \n"
                + "Datos registrados:\n"
                + "Nombre: " + p.getNombre() + " " + p.getApellidoPaterno() + " " + p.getApellidoMaterno() + "\n"
                + "Fecha de nacimiento: " + p.getFechaNacimiento() + "\n"
                + "Correo: " + p.getEmail() + "\n"
                + "Sexo: " + p.getSexo() + "\n"
                + "Tipo de sangre: " + p.getTipoSangre() + "\n"
                + "Depósito: " + p.getCantidad() + "\n"
                + "\n"
                + "Código de verificación:\n"
                + codigo + "\n"
                + "\n"
                + "Gracias por su preferencia en esta Expo-Maternidad.\n"
                + "En caso de alguna aclaración comunicarse al siguiente correo\n"
                + "caguilera@medicacampestre.com\n"
                + "Atte: Hospital Medica Camprestre.";

        //Ejecutamos la consulta:
        pstmt.executeUpdate();

        System.out.println(pstmt.toString());
        ControllerCorreos.enviarConGMail(p.getEmail(), "Media Campestre - Expo maternidad", mensaje);
//        Le pedimos al PreparedStatement el valor de las claves 
//        primarias generadas, que en este caso, es solo un valor.
        rs = pstmt.getGeneratedKeys();

        //Intentamos movernos al primer registro:
        if (rs.next()) {
            idGenerado = rs.getInt(1);
            p.setId(idGenerado);

        }

        //Cerramos todos los objetos de conexion con la Base de Datos
        rs.close();
        pstmt.close();
        connMySQL.close();

        //Devolvemos el ID que se genero:
        return idGenerado;

    }

    /**
     * Actualiza un registro de Sucursal en la Base de Datos
     *
     * @param p
     * @throws java.lang.Exception
     */
    public void update(Preregistro p) throws Exception {
        //Definimos la consulta SQL que realiza la inserción del registro:
        String sql = "UPDATE preregistro SET nombre = ?, apellidoPaterno = ?, apellidoMaterno = ?, fechaNacimiento = ?, email = ?, telefono = ?,"
                + " sexo = ?, tipoSangre = ?, cantidad = ?, ine = ? WHERE idPreregistro =?";

        // Con este objeto nos vamos a conectar a la Base de Datos:
        ConexionMySQL connMySQL = new ConexionMySQL();

        // Abrimos la conexión a la Base de Datos: 
        Connection conn = connMySQL.open();

        // Declaramos e inicializamos el objeto con el que ejecutaremos la consulta SQL:
        PreparedStatement pstmt = conn.prepareStatement(sql);

        // Llenamos el valor de campo de la consulta SQL definida antes:
        pstmt.setString(1, p.getNombre());
        pstmt.setString(2, p.getApellidoPaterno());
        pstmt.setString(3, p.getApellidoMaterno());
        pstmt.setString(4, p.getFechaNacimiento());
        pstmt.setString(5, p.getEmail());
        pstmt.setString(6, p.getTelefono());
        pstmt.setString(7, p.getSexo());
        pstmt.setString(8, p.getTipoSangre());
        pstmt.setDouble(9, p.getCantidad());
        pstmt.setString(10, p.getIne());

        // Ejecutamos la consulta SQL:
        pstmt.executeUpdate();

        // Cerramos todos los objetos de conexión con la Base de Datos:
        pstmt.close();
        connMySQL.close();
    }

    /**
     * Consulta todos los registros de Preregistro encontrados en la Base de
     * Datos, aplicando coincidencias parciales con base en el parámetro
     * <code>filtro</code>
     *
     * Los registros encontrados se devuelven en forma de una lista dinámica
     * (List{@link  Producto}) que contiene dentro los objetos de tipo
     * {@link org.mc.fho.model.Preregistro}
     *
     * @param filtro Es el término de coincidencia parcial que coincidirá la
     * búsqueda a solo aquellos registros coincidentes con el valor
     * especificado.
     *
     * @return Devuelve el listado de productos encontradas en la Base de Datos
     * , en forma de una lista dinámica.
     */
    public List<Preregistro> getAll(String filtro) throws Exception {
        // Se define la consulta SQL:
        String sql = "SELECT * FROM preregistro";

        // Aquí se guardarán objetos de tipo Preregistro. Una lista es un contenedor dinámico de objetos.
        List<Preregistro> preregistros = new ArrayList<Preregistro>();

        // Una variable temporal para crear nuevas instancias de Preregistro:
        Preregistro p = null;

        // Con este objeto se conectará a la Base de Datos:
        ConexionMySQL connMySQL = new ConexionMySQL();

        //Se abré la conexión a la Base de Datos:
        Connection conn = connMySQL.open();

        // Se declara e inicializa el objeto con el quese ejecutara la consulta SQL:
        PreparedStatement pstmt = conn.prepareStatement(sql);

        // Se ejecuta la consulta y se guarda su resultado:
        ResultSet rs = pstmt.executeQuery();

        // Se recorre el ResultSet:
        while (rs.next()) {
            p = fill(rs);
            preregistros.add(p);
        }

        //Se cierran todos los objetos de conexión con la Base de Datos:
        rs.close();
        pstmt.close();
        connMySQL.close();

        //Se devuelve la lista de preregistros:
        return preregistros;
    }

    public Preregistro fill(ResultSet rs) throws SQLException {
        //Se creá una nueva instancia de Preregistro:
        Preregistro p = new Preregistro();

        //Se llenan sus propiedades:
        p.setId(rs.getInt("idPreregistro"));
        p.setNombre(rs.getString("nombre"));
        p.setApellidoPaterno(rs.getString("apellidoPaterno"));
        p.setApellidoMaterno(rs.getString("apellidoMaterno"));
        p.setFechaNacimiento(rs.getString("fechaNacimiento"));
        p.setEmail(rs.getString("email"));
        p.setTelefono(rs.getString("telefono"));
        p.setSexo(rs.getString("sexo"));
        p.setTipoSangre(rs.getString("tipoSangre"));
        p.setCantidad(rs.getDouble("cantidad"));
        p.setIne(rs.getString("ine"));
        p.setCodigo(rs.getString("codigo"));
        //Se devuelve el objeto de tipo Preregistro:
        return p;
    }

    static String getRandomString(int i) {
        String theAlphaNumericS;
        StringBuilder builder;

        theAlphaNumericS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                + "0123456789";

        //create the StringBuffer
        builder = new StringBuilder(i);

        for (int m = 0; m < i; m++) {

            // generate numeric
            int myindex
                    = (int) (theAlphaNumericS.length()
                    * Math.random());

            // add the characters
            builder.append(theAlphaNumericS
                    .charAt(myindex));
        }

        return builder.toString();
    }

}
