/*
Confeccionar un programa que pida por teclado tres notas de un alumno, calcule el promedio e imprima alguno de estos mensajes:
Si el promedio es >=7 mostrar "Promocionado".
Si el promedio es >=4 y <7 mostrar "Regular".
Si el promedio es <4 mostrar "Reprobado". 
*/

import java.util.Scanner;

public class EstructuraCondicionalAnidada1 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int nota1,nota2,nota3;
        System.out.print("Ingrese primer nota:");
        nota1=teclado.nextInt();
        System.out.print("Ingrese segunda nota:");
        nota2=teclado.nextInt();
        System.out.print("Ingrese tercer nota:");
        nota3=teclado.nextInt();
        int promedio=(nota1 + nota2 + nota3) / 3;
        if (promedio>=7) {
            System.out.print("Promocionado");    
        } else {
            if (promedio>=4) {
                System.out.print("Regular");
            } else {
                System.out.print("Reprobado");
            }
        }
    }
}
