package org.mc.fho.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Sergio Alba Arguello
 */
public class ConexionMySQL {

    //Aquí gse guarda y gestiona la conexión con MySQL:
    Connection conexion;

    /*
      * Se realiza la conexión con la Base de datos y se devuelve
      *un objeto de tipo Connection.
     */
    public Connection open() throws Exception {
        //Se establece el Driver de MySQL:
        String driver = "com.mysql.jdbc.Driver";
        //Se establece la ruta de conexión:
        String url = "jdbc:mysql://localhost:3306/medicacamp";

        //Se establece el usuario y la contraseña:
        String usuario = "root";
        String contrasenia = "";

        //Se registra el Driver 
        //Esto sirve para ejecutar clases en tiempo de ejecución 
        Class.forName(driver);

        //Se abre la conexión con MySQL;
        conexion = DriverManager.getConnection(url, usuario, contrasenia);

        //Se devuelve el objeto que mantiene la conexion con MySQL:
        return conexion;
    }
    
    //Se cierra la conexion con MySQL
    public void close() {
        try {
            if (conexion != null) {
                conexion.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
