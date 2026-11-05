/*
Se ingresan por teclado tres números, si al menos uno de los valores ingresados 
es menor a 10, imprimir en pantalla la leyenda 
"Alguno de los números es menor a diez". 
*/

import java.util.Scanner;

public class CondicionesCompuestas6 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int num1,num2,num3;
        System.out.print("Ingrese primer valor:");
        num1=teclado.nextInt();
        System.out.print("Ingrese segundo valor:");
        num2=teclado.nextInt();
        System.out.print("Ingrese tercer valor:");
        num3=teclado.nextInt();
        if (num1<10 || num2<10 || num3<10) {
            System.out.print("Alguno de los números es menor a diez");
        }
    }
}