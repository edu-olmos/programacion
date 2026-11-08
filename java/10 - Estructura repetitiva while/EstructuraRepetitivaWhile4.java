/*
Una planta que fabrica perfiles de hierro posee un lote de n piezas.
Confeccionar un programa que pida ingresar por teclado la cantidad de piezas a procesar y luego ingrese la longitud de cada perfil; sabiendo que la pieza cuya longitud esté comprendida en el rango de 1,20 y 1,30 son aptas. Imprimir por pantalla la cantidad de piezas aptas que hay en el lote. 
*/

import java.util.Scanner;

public class EstructuraRepetitivaWhile4 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int x,cantidad,n;
        float largo;
        x=1;
        cantidad=0;
        System.out.print("Cuantas piezar procesará:");
        n=teclado.nextInt();
        while (x<=n) {
            System.out.print("Ingrese la medida de la pieza:");
            largo=teclado.nextFloat();
            if (largo>=1.20 && largo<=1.30) {
                cantidad = cantidad +1;
            }
            x=x + 1;
        }
        System.out.print("La cantidad de piezas aptas son:");
        System.out.print(cantidad);
    }
}