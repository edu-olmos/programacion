/*
 Confeccionar una clase que represente un empleado. Definir como atributos su nombre y su sueldo. Confeccionar los métodos para la carga, otro para imprimir sus datos y por último uno que imprima un mensaje si debe pagar impuestos (si el sueldo supera a 3000) 
*/

import java.util.Scanner;
public class Empleado {
    private Scanner teclado;
    String nombre;
    float sueldo;
    
    public void inicializar() {
        teclado=new Scanner(System.in);
        System.out.print("Ingrese el nombre del empleado:");
        nombre=teclado.next();
        System.out.print("Ingrese su sueldo:");
        sueldo=teclado.nextFloat();
    }
    
    public void pagaImpuestos() {
        if (sueldo>3000) {
            System.out.print("Debe abonar impuestos");
        } else {
            System.out.print("No paga impuestos");
        }
    }
    
    public static void main(String[] ar) {
        Empleado empleado1;
        empleado1=new Empleado();
        empleado1.inicializar();
        empleado1.pagaImpuestos();
    }
}
