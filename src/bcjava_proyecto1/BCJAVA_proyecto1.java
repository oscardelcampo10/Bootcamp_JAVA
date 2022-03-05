/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bcjava_proyecto1;


import java.util.Scanner;
/**
 *
 * @author OSCAR
 */
public class BCJAVA_proyecto1 {

    /**
     * @param args the command line arguments
     */
    // Validar fechas, ingreso del cliente//
    public static void main(String[] args) {
        Scanner Cliente = new Scanner(System.in);
        System.out.print("Ingrese el día: ");
        int dias = Cliente.nextInt();
        System.out.print("Ingrese el mes: ");
        int mes = Cliente.nextInt();
        System.out.print("Ingrese el año: ");
        int año = Cliente.nextInt();
        
        
        if (año>= 1900 && año<=2099){
            
            if (mes>=1 && mes<=12){
                if (mes == 2){
                    if (dias>=1 && dias<=28){
                        System.out.println("fecha de febrero verdadero");
                    }
                    if (dias == 29) {
                        System.out.println("fecha de febrero bisciesto");
                    }
                    else{
                        System.out.println("fecha incorrecta");
                    }
                }
                if(dias>= 1 && dias<=31){
                    System.out.println("fecha  verdadera");
                }
                else{
                    System.out.println("día incorrecto");
                }
                
            }else{
                System.out.println("mes incorrecto");
            }
            
            System.out.println("Verdadero");
        }else{
            System.out.println("años no válido");
        }
    
        System.out.println("La fecha es: " + dias + "/"+ mes +"/" + año + " ");
                
        
        
        
        
    }
    
}
