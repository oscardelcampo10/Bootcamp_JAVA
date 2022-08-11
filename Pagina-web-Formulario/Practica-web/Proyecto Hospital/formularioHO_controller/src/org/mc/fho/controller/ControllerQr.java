package org.mc.fho.controller;

import com.barcodelib.barcode.QRCode;
import java.awt.Desktop;
import java.io.File;

/**
 *
 * @author Sergio Alba Arguello
 */
public class ControllerQr {

    QRCode qr = new QRCode();
    //c---> contenido del QR, Datos o URL
    //n---> Nombre del QR

    public void crearQR(String c, String n) throws Exception {
        qr.setData(c);//Asignamos el contenido al QR
        qr.setDataMode(QRCode.MODE_BYTE);//Aplicamos el formato byte
        qr.setUOM(0);//Unidad de medida de la imgen 0=pixeles, 1= cm y 2= pulgadas
        qr.setModuleSize(8);//Definimos el tamaño de los codeword de datos
        //aplicacion de resolución y rotación
        qr.setRotate(0);
        qr.setResolution(0);
        //Aplicamos los margenes 
        qr.setLeftMargin(1);
        qr.setRightMargin(1);
        qr.setTopMargin(1);
        qr.setBottomMargin(1);

        //Creamos el archivo vacio en la ruta del proyecto
        File f = new File("./src/org/mc/fho/controller/" + n + ".jpg");

        //Dibujamos el QR en el archivo vacio
        qr.renderBarcode("./src/org/mc/fho/controller/" + n + ".jpg");

        Desktop d = Desktop.getDesktop();
        d.open(f);
    }
}
