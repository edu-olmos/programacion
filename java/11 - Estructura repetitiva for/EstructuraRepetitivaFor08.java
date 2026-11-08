/*
 Confeccionar un programa que permita ingresar un valor del 1 al 10 y nos muestre la tabla de multiplicar del mismo (los primeros 12 términos)
Ejemplo: Si ingreso 3 deberá aparecer en pantalla los valores 3, 6, 9, hasta el 36. 
*/

import java.util.Scanner;

public class EstructuraRepetitivaFor08 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int f,valor;
        System.out.print("Ingrese un valor entre 1 y 10:");
        valor=teclado.nextInt();
        for(f=valor;f<=valor*12;f=f+valor) {
            System.out.print(f);
            System.out.print("-");
        }
    }
}
