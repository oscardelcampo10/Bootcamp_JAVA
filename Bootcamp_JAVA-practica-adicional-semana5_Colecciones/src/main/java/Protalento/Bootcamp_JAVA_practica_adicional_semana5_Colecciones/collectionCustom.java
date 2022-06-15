package Protalento.Bootcamp_JAVA_practica_adicional_semana5_Colecciones;


public class collectionCustom<T>  {
	
	private T[] Dato1;
	
	
	//constructores
	
	public collectionCustom() {
		super();
	}
	
	public collectionCustom(T[] dato1) {
		super();
		Dato1 = dato1;
	}


	/**
	 * @return the dato1
	 */
	public T[] getDato1() {
		return Dato1;
	}


	/**
	 * @param dato1 the dato1 to set
	 */
	public void setDato1(T[] dato1) {
		this.Dato1 = dato1;
	}
	
	
	//metodos
	
	//Size

	//add
	public void add1(T dato1) {
		
		for(int s= 0; s< Dato1.length; s++) {
			
			if (Dato1[s] == null) {
				
				Dato1[s] = dato1;
				break;
			}
		}
	}
	
	
	//Addfirst
	public void addFirst(T dato1) {
		
		int counter = 0;
		
		for(int s= 0; s< Dato1.length; s++) {
			
			if (Dato1[s] == null) {
				
				counter++;
				}
			}
		if(counter != 0 ) {
			
			int counter2 = 0;
			for(int s= Dato1.length - 1; s >= 0; s-- ) {
				if (Dato1[s]== null) {
					
					counter2 = 1;
				}
				if(counter2 == 1) {
					if(Dato1[s] != null) {
						Dato1[s + 1] = Dato1[s];
					}else {
						
					}
				}
			}
			Dato1[0] = dato1;
			
		}else {
			
			System.out.println(" no es posible adicionar" + dato1 +" , debido a que no hay espacio suficiente en la colección. ");
			
		}
		
	}
	
	//Addlast
	public void addLast(T dato1) {
		int counter1= 0;
		for(int s= Dato1.length - 1; s>=0 ; s--) {
			
			if (Dato1[s] == null) {
				
				counter1++;
				}
			}
		if (counter1 != 0 ) {
			int counter2 = 0;
			for (int s = 0; s< Dato1.length - 1; s++) {
				if (Dato1[s] == null) {
					counter2 = 1;
				}
				if (counter2 == 1) {
					if (Dato1[s +  1] != null) {
						Dato1[s] = Dato1[s + 1];
					} else {
						}
					}
				}
			Dato1[Dato1.length - 1] = dato1;
			}
		else {
				System.out.println(" no es posible adicionar" + dato1 +" , debido a que no hay espacio suficiente en la colección. ");
				}
		}
	
	//size
	public int size() {
		int counter = Dato1.length;
		
		return counter;
	}
	
	
	// remove
	public  T remove(T dato1) {
		
		for(int s= 0; s< Dato1.length; s++) {
			
			if (Dato1[s] == dato1) {
				
				Dato1[s] = null; 
				break;
			}
		}
		
		return dato1;
	}
	
	//removeAll
	public void removeAll(T  dato1) {
		
		for(int s= 0; s< Dato1.length; s++) {
			
			if (Dato1[s] != null) {
				
				Dato1[s] = null;  
				}
			}	
		}
	
	//Empty
	public  boolean empty() {
		
		boolean empty1 = true;
		
		for(int s= 0; s< Dato1.length; s++) {
			
			if (Dato1[s] != null) {
				
				empty1 = false;
				break;  
				} else {
				 empty1 = true;
				 }	
			}
		return empty1;
		}


	
	
	}
