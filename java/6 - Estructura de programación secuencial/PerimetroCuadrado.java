/*
Realizar la carga del lado de un cuadrado, mostrar por pantalla el perímetro del mismo
 (El perímetro de un cuadrado se calcula multiplicando el valor del lado por cuatro) 
*/

import java.util.Scanner;

public class PerimetroCuadrado {
    public static void main(String[] ar) {
    	Scanner teclado=new Scanner(System.in);
    	int lado,perimetro;
    	System.out.print("Ingrese el lado del cuadrado:");
    	lado=teclado.nextInt();
    	perimetro=lado * 4;
    	System.out.print("El perímetro del cuadrado es:");
    	System.out.print(perimetro);
    }
}