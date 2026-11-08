/*
En un banco se procesan datos de las cuentas corrientes de sus clientes. De cada cuenta corriente se conoce: número de cuenta y saldo actual. El ingreso de datos debe finalizar al ingresar un valor negativo en el número de cuenta.
Se pide confeccionar un programa que lea los datos de las cuentas corrientes e informe:
a)De cada cuenta: número de cuenta y estado de la cuenta según su saldo, sabiendo que:

Estado de la cuenta	'Acreedor' si el saldo es >0.
			'Deudor' si el saldo es <0.
			'Nulo' si el saldo es =0.

b) La suma total de los saldos acreedores. 
*/

import java.util.Scanner;

public class EstructuraRepetitivaDoWhile5 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int cuenta;
        float saldo,suma;
        suma=0;
        do {
            System.out.print("Ingrese número de cuenta:");
            cuenta=teclado.nextInt();
            if (cuenta>=0) {
                System.out.print("Ingrese saldo:");
                saldo=teclado.nextFloat();
                if (saldo>0) {
                    System.out.println("Saldo Acreedor.");
                    suma=suma+saldo;
                } else {
                    if (saldo<0) {
                        System.out.println("Saldo Deudor.");
                    } else {
                        System.out.println("Saldo Nulo.");
                    }
                }
            }
        } while(cuenta>=0);
        System.out.print("Total de saldos Acreedores:");
        System.out.print(suma);
    }
}
