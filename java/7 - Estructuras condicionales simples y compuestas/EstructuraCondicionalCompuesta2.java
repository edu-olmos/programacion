/*
Realizar un programa que lea por teclado dos números, 
si el primero es mayor al segundo informar su suma y diferencia, 
en caso contrario informar el producto y la división del primero respecto al segundo. 
*/

import java.util.Scanner;

public class EstructuraCondicionalCompuesta2 {
    public static void main(String[] ar) {
    	Scanner teclado=new Scanner(System.in);
    	int num1,num2;
    	System.out.print("Ingrese primer valor:");
    	num1=teclado.nextInt();
    	System.out.print("Ingrese segundo valor:");
    	num2=teclado.nextInt();
    	if (num1>num2) {
    	    int suma,diferencia;
    	    suma=num1 + num2;
    	    diferencia=num1 - num2;
    	    System.out.print("La suma de los dos valores es:");
    	    System.out.println(suma);
    	    System.out.print("La diferencia de los dos valores es:");
    	    System.out.println(diferencia);
    	} else {
    	    int producto,division;
    	    producto=num1 * num2;
    	    division=num1 / num2;
    	    System.out.print("El producto de los dos valores es:");
    	    System.out.println(producto);
    	    System.out.print("La división de los dos valores es:");
    	    System.out.println(division);    		
    	}
    }
}