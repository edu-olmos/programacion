/*
Realizar un programa que solicite ingresar dos números distintos y 
muestre por pantalla el mayor de ellos.
*/

import java.util.Scanner;

public class 
 {
    public static void main(String[] ar) {
    	Scanner teclado=new Scanner(System.in);
    	int num1,num2;
    	System.out.print("Ingrese primer valor:");
    	num1=teclado.nextInt();
    	System.out.print("Ingrese segundo valor:");
    	num2=teclado.nextInt();
    	if (num1>num2) {
    		System.out.print(num1);
    	} else {
    		System.out.print(num2);
    	}
    }
}

