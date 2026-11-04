/*
 Un postulante a un empleo, realiza un test de capacitación, se obtuvo la siguiente 
 información: cantidad total de preguntas que se le realizaron y la cantidad de 
 preguntas que contestó correctamente. 
 Se pide confeccionar un programa que ingrese los dos datos por teclado e 
 informe el nivel del mismo según el porcentaje de respuestas correctas 
 que ha obtenido, y sabiendo que:

	Nivel máximo:	Porcentaje>=90%.
	Nivel medio:	Porcentaje>=75% y <90%.
	Nivel regular:	Porcentaje>=50% y <75%.
	Fuera de nivel:	Porcentaje<50%.

*/

import java.util.Scanner;

public class EstructuraCondicionalAnidada5 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int totalPreguntas,totalCorrectas;
        System.out.print("Ingrese la cantidad total de preguntas del examen:");
        totalPreguntas=teclado.nextInt();
        System.out.print("Ingrese la cantidad total de preguntas contestadas correctamente:");
        totalCorrectas=teclado.nextInt();
        int porcentaje=totalCorrectas * 100 / totalPreguntas;
        if (porcentaje>=90) {
            System.out.print("Nivel máximo");
        } else {
            if (porcentaje>=75) {
                System.out.print("Nivel medio");
            } else {
                if (porcentaje>=50) {
                    System.out.print("Nivel regular");
                } else {
                    System.out.print("Fuera de nivel");
                }
            }
        }
    } 
}