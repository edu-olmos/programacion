/*

Se ingresa por teclado un número positivo de uno o dos dígitos 
(1..99) mostrar un mensaje indicando si el número tiene uno o dos dígitos.
(Tener en cuenta que condición debe cumplirse para tener dos dígitos, un número entero) 
*/

import java.util.Scanner;

public class EstructuraCondicionalCompuesta3 {
    public static void main(String[] ar) {
    	Scanner teclado=new Scanner(System.in);
    	int num;
    	System.out.print("Ingrese un valor entero de 1 o 2 dígitos:");
    	num=teclado.nextInt();
    	if (num<10) {
    	    System.out.print("Tiene un dígito");
    	} else {
    	    System.out.print("Tiene dos dígitos");
    	}
    }
}