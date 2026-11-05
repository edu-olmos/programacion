/*
Se carga una fecha (día, mes y año) por teclado. 
Mostrar un mensaje si corresponde al primer 
trimestre del año (enero, febrero o marzo) 
Cargar por teclado el valor numérico del día, mes y año.
Ejemplo: dia:10 mes:1 año:2010. 
*/

import java.util.Scanner;

public class CondicionesCompuestas2 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        int dia,mes,año;
        System.out.print("Ingrese nro de día:");
        dia=teclado.nextInt();
        System.out.print("Ingrese nro de mes:");
        mes=teclado.nextInt();
        System.out.print("Ingrese nro de año:");
        año=teclado.nextInt();
        if (mes==1 || mes==2 || mes==3) {
            System.out.print("Corresponde al primer trimestre");
        }
    }
}