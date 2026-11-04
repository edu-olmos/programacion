/*
 Confeccionar un programa que permita cargar un número entero positivo de hasta tres cifras y muestre un mensaje indicando si 
 tiene 1, 2, o 3 cifras. Mostrar un mensaje de error si el número de cifras es mayor. 
*/

import java.util.Scanner;

public class EstructuraCondicionalAnidada4 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int num;
        System.out.print("Ingrese un valor de hasta tres dígitos positivo:");
        num=teclado.nextInt();
        if (num<10) {
	    System.out.print("Tiene un dígito");
        }
        else {
            if (num<100) {
                System.out.print("Tiene dos dígitos");
            } else {
                if (num<1000) {
                    System.out.print("Tiene tres dígitos");
                } else {
                    System.out.print("Error en la entrada de datos.");
                }
            }
        }
    } 
}
