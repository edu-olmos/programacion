/*
De un operario se conoce su sueldo y los años de antigüedad. 
Se pide confeccionar un programa que lea los datos de entrada e informe:
a) Si el sueldo es inferior a 500 y su antigüedad es igual o superior a 10 años, 
otorgarle un aumento del 20 %, mostrar el sueldo a pagar.
b)Si el sueldo es inferior a 500 pero su antigüedad es menor a 10 años,
 otorgarle un aumento de 5 %.
c) Si el sueldo es mayor o igual a 500 mostrar el sueldo en pantalla sin cambios. 
*/

import java.util.Scanner;

public class CondicionesCompuestas8 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        float sueldo;
        int antiguedad;
        System.out.print("Ingrese sueldo del empleado:");
        sueldo=teclado.nextFloat();
        System.out.print("Ingrese su antiguedad en años:");
        antiguedad=teclado.nextInt();
        if (sueldo<500 && antiguedad>10) {
            float aumento=sueldo * 0.20f;
            float sueldoTotal=sueldo+aumento;
            System.out.print("Sueldo a pagar:");
            System.out.print(sueldoTotal);
        } else {
            if (sueldo<500) {
                float aumento=sueldo * 0.05f;
                float sueldoTotal=sueldo+aumento;
                System.out.print("Sueldo a pagar:");
                System.out.print(sueldoTotal);            
            } else {
            	System.out.print("Sueldo a pagar:");
                System.out.print(sueldo);
            }
        }
    }
}    
