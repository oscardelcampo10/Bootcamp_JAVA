package Protalento.Bootcamp_JAVA_practica_adicional_semana5_Colecciones;

//import java.util.Scanner;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	
    	String [] animals = new String[10];
        collectionCustom<String> AnimalsList = new collectionCustom<String>(animals);
        /**
        Scanner Scan = new Scanner(System.in);
        
        System.out.println("Agrega tres animales: ");
        System.out.println("Agrega  animal 1: ");
        String Index0 = Scan.next();
        System.out.println("Agrega  animal 2:  ");
        String Index1 = Scan.next();
        System.out.println("Agrega  animal 3:  ");
        String Index2 = Scan.next();
        */
        AnimalsList.add1("Jirafa");
        AnimalsList.add1("Gato");
        AnimalsList.add1("Perro");
        AnimalsList.add1("Hipopótamo");
        AnimalsList.add1("Loro");
        
        AnimalsList.addFirst("Lobo");
        AnimalsList.addLast("Ratón");
        AnimalsList.size();
        AnimalsList.remove("Gato");
        AnimalsList.removeAll("Perro");
        AnimalsList.empty();
        //animals1 = AnimalsList.toArray(animals);
        
        for(int i= 0; i< animals.length; i++ ) {
        	
        	System.out.println(AnimalsList.getDato1()[i]);
        	
        }
      
        
       // Scan.close();
    }
}
