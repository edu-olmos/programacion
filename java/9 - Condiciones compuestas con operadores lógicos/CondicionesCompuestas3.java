/*
Realizar un programa que pida cargar una fecha cualquiera, 
luego verificar si dicha fecha corresponde a Navidad. 
*/

import java.util.Scanner;

public class CondicionesCompuestas3 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int dia,mes,año;
        System.out.print("Ingrese nro de día:");
        dia=teclado.nextInt();
        System.out.print("Ingrese nro de mes:");
        mes=teclado.nextInt();
        System.out.print("Ingrese nro de año:");
        año=teclado.nextInt();
        if (mes==12 && dia==25) {
            System.out.print("La fecha ingresada corresponde a navidad.");
        }
    }
}