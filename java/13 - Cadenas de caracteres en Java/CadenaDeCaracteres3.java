/*
Solicitar el ingreso de dos apellidos. Mostrar un mensaje si son iguales o distintos.

En el caso que necesitemos considerar igual caracteres mayúsculas y minúsculas 
podemos utilizar el método equalsIgnoreCase:

        if (apellido1.equalsIgnoreCase(apellido2)) {
            System.out.print("Los apellidos son iguales sin tener en cuenta mayúsculas y minúsculas");
        } else {
            System.out.print("Los apellidos son distintos sin tener en cuenta mayúsculas y minúsculas");
        }


*/


import java.util.Scanner;

public class CadenaDeCaracteres3 {
    public static void main(String[] ar) {
        Scanner teclado=new Scanner(System.in);
        String apellido1,apellido2;
        System.out.print("Ingrese primer apellido:");
        apellido1=teclado.next();
        System.out.print("Ingrese segundo apellido:");
        apellido2=teclado.next();
        if (apellido1.equals(apellido2)) {
            System.out.print("Los apellidos son iguales");
        } else {
            System.out.print("Los apellidos son distintos");
        }
    }
}