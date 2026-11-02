/*
Se debe desarrollar un programa que pida el ingreso del precio de un artículo
 y la cantidad que lleva el cliente. Mostrar lo que debe abonar el comprador. 
*/


import java.util.Scanner;

public class CostoCompra {
    public static void main(String[] ar) {
    	Scanner teclado=new Scanner(System.in);
    	int cantidad;
    	float precio;
    	float importe;
    	System.out.print("Ingrese la cantidad de artículos a llevar:");
    	cantidad=teclado.nextInt();
    	System.out.print("Ingrese el valor unitario del producto:");
    	precio=teclado.nextFloat();
    	importe=precio * cantidad;
    	System.out.print("El importe total a pagar es:");
    	System.out.print(importe);
    }
}