/*
Hallar la superficie de un cuadrado conociendo el valor de un lado.
*/

import java.util.Scanner;

public class SuperficieCuadrado {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int lado;
        int superficie;
        System.out.print("Ingrese el valor del lado del cuadrado:");
        lado=teclado.nextInt();
        superficie=lado * lado;
        System.out.print("La superficie del cuadrado es:");
        System.out.print(superficie);
    }
}
