/*
Escribir un programa que lea 10 notas de alumnos y nos informe cuántos tienen notas mayores o iguales a 7 y cuántos menores.
*/

import java.util.Scanner;

public class EstructuraRepetitivaFor3 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int aprobados,reprobados,f,nota;
        aprobados=0;
        reprobados=0;
        for(f=1;f<=10;f++) {
            System.out.print("Ingrese la nota:");
            nota=teclado.nextInt();
            if (nota>=7) {
                aprobados=aprobados+1;
            } else {
            	reprobados=reprobados+1;
            }
        }
        System.out.print("Cantidad de aprobados:");
        System.out.println(aprobados);
        System.out.print("Cantidad de reprobados:");
        System.out.print(reprobados);
    }
}
