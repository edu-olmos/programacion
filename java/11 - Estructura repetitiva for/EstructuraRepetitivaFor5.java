/*
Escribir un programa que lea n números enteros y calcule la cantidad de valores mayores o iguales a 1000.
Este tipo de problemas también se puede resolver empleando la estructura repetitiva for. Lo primero que se hace es cargar una variable que indique la cantidad de valores a ingresar. Dicha variable se carga antes de entrar a la estructura repetitiva for.
La estructura for permite que el valor inicial o final dependa de una variable cargada previamente por teclado. 
*/



import java.util.Scanner;

public class EstructuraRepetitivaFor5 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int cantidad,n,f,valor;
        cantidad=0;
        System.out.print("Cuantos valores ingresará:");
        n=teclado.nextInt();
        for(f=1;f<=n;f++) {
            System.out.print("Ingrese el valor:");
            valor=teclado.nextInt();
            if (valor>=1000) {
                cantidad=cantidad+1;
            }
        }
        System.out.print("La cantidad de valores ingresados mayores o iguales a 1000 son:");
        System.out.print(cantidad);
    }
}
