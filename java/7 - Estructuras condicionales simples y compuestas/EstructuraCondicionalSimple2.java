/*
Se ingresan tres notas de un alumno,
 si el promedio es mayor o igual a siete mostrar un mensaje "Promocionado". 
*/


import java.util.Scanner;

public class EstructuraCondicionalSimple2 {
    public static void main(String[] ar) {
    	Scanner teclado=new Scanner(System.in);
    	int nota1,nota2,nota3;
    	System.out.print("Ingrese primer nota:");
    	nota1=teclado.nextInt();
    	System.out.print("Ingrese segunda nota:");
    	nota2=teclado.nextInt();
    	System.out.print("Ingrese tercer nota:");
    	nota3=teclado.nextInt();
        int promedio;
        promedio=(nota1 + nota2 + nota3) / 3;
    	if (promedio>=7) {
    	    System.out.print("Promocionado");
    	}
    }
}
