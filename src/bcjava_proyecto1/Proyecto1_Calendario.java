/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bcjava_proyecto1;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

/**
 *
 * @author OSCAR
 */
public class Proyecto1_Calendario {
    
    private String CurrentDay;
    private String CurrentMonth;
    private String CurrentYear;
    private Date CurrentDate;
    
    public static String main(String[] args){
        
        Scanner scannerBuffer = new  Scanner(System.in);
        System.out.println("Introduce una fecha de formata: dd-MM-YY");
        String bufferdate = scannerBuffer.next();
        
        if (ValidateDate(bufferdate)){
            
            System.out.println("La fecha es válida. ");
            return "La fecha  es valida";
            
        }else{
           System.out.println("La fecha es inválida.");
           return "La fecha es inválida.";
        }
        
    }
    
   
    public static  Boolean ValidateDate(String bufferdate){
        try{
            
            Date formatDate = parseDate(bufferdate);
            System.out.println(formatDate.getTime());
            if (formatDate.getTime()!= 0){
            System.out.println(formatDate);
            return false;
        }
            
            return false;
        }
        catch(ParseException e){
            return false;
        }
    }
    
    public static String formatDate(Date date, String formatDate){
        
        SimpleDateFormat getDateFormat = new SimpleDateFormat(formatDate);
        String dateFormat = getDateFormat.format(date);
        System.out.println("Fecha del objeto valor: "+ dateFormat);
        return dateFormat;   
    }

    public static Date parseDate(String date) throws ParseException{
        System.out.print("Ingresa fecha del objeto valor: " + date);
        SimpleDateFormat getDateFormat = new SimpleDateFormat("dd-MM-YYYY");
        Date dateOutput = getDateFormat.parse(date);
        
        System.out.print("Fecha de objeto valor: " + dateOutput);
        return dateOutput;
    
    }
    
    public static boolean validateDate( int day, int Month, int year){
        
        
        if(year>= 1900 & year<=2099){
            if (Month == 2){
                if ((year % 4 == 0)&&(year % 100 != 0)){
                    if (day >= 1 && day <= 29){
                        return true;
                    }
            }
                else{
                    if (day >= 1 && day <= 28){
                        return true;
                    }
                }
                    
                }
        }
        else{
            if (day >= 1 && day <=31){
                return true;
             }
        }
        return false;
    }
    
    public String getCurrentDay() {
        return CurrentDay;
    }

    public void setCurrentDay(String CurrentDay) {
        this.CurrentDay = CurrentDay;
    }

    public String getCurrentMonth() {
        return CurrentMonth;
    }

    public void setCurrentMonth(String CurrentMonth) {
        this.CurrentMonth = CurrentMonth;
    }

    public String getCurrentYear() {
        return CurrentYear;
    }

    public void setCurrentYear(String CurrentYear) {
        this.CurrentYear = CurrentYear;
    }

    public Date getCurrentDate() {
        return CurrentDate;
    }

    public void setCurrentDate(Date CurrentDate) {
        this.CurrentDate = CurrentDate;
    }
        
      
       
}
