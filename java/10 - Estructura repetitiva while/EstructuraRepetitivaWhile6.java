/*
Se ingresan un conjunto de n alturas de personas por teclado. Mostrar la altura promedio de las personas. 
*/

import java.util.Scanner;

public class EstructuraRepetitivaWhile6 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int n,x;
        float altura,suma,promedio;
        System.out.print("Cuantas personas hay:");
        n=teclado.nextInt();
        x=1;
        suma=0;
        while (x<=n) {
            System.out.print("Ingrese la altura:");
            altura=teclado.nextFloat();
            suma=suma + altura;
            x=x + 1;
        }
        promedio=suma/n;
        System.out.print("Altura promedio:");
        System.out.print(promedio);
    }
}