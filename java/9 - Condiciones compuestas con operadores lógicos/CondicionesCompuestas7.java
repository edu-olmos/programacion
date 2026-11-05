/*
 Escribir un programa que pida ingresar la coordenada de un punto en el plano, 
 es decir dos valores enteros x e y (distintos a cero).
Posteriormente imprimir en pantalla en que cuadrante se ubica dicho punto. 
(1º Cuadrante si x > 0 Y y > 0 , 2º Cuadrante: x < 0 Y y > 0, etc.) 

*/

import java.util.Scanner;

public class CondicionesCompuestas7 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int x,y;
        System.out.print("Ingrese coordenada x:");
        x=teclado.nextInt();
        System.out.print("Ingrese coordenada y:");
        y=teclado.nextInt();
        if (x>0 && y>0) {
        	System.out.print("Se encuentra en el primer cuadrante");
        } else {
            if (x<0 && y>0) {
                System.out.print("Se encuentra en el segundo cuadrante");
            } else {
                if (x<0 && y<0) {
                    System.out.print("Se encuentra en el tercer cuadrante");
                }
            	else {
                    System.out.print("Se encuentra en el cuarto cuadrante");
            	}
            }
        }
    }
}
