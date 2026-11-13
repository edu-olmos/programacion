/*
Desarrollar una clase que represente un punto en el plano y tenga los siguientes métodos: cargar los valores de x e y, imprimir en que cuadrante se encuentra dicho punto (concepto matemático, primer cuadrante si x e y son positivas, si x<0 e y>0 segundo cuadrante, etc.)
*/

import java.util.Scanner;
public class Punto {
    private Scanner teclado;
    int x,y;
    
    public void inicializar() {
        teclado=new Scanner(System.in);
        System.out.print("Ingrese coordenada x :");
        x=teclado.nextInt();
        System.out.print("Ingrese coordenada y :");
        y=teclado.nextInt();
    }
    
    void imprimirCuadrante() {
        if (x>0 && y>0) {
            System.out.print("Se encuentra en el primer cuadrante.");
        } else {
            if (x<0 && y>0) {
                System.out.print("Se encuentra en el segundo cuadrante.");
            } else {
                if (x<0 && y<0) {
                    System.out.print("Se encuentra en el tercer cuadrante.");
                } else {
                    if (x>0 && y<0) {
                        System.out.print("Se encuentra en el cuarto cuadrante.");
                    } else {
                        System.out.print("El punto no está en un cuadrante.");
                    }
                }
            }
        }
    }
    
    public static void main(String[] ar) {
        Punto punto1;
        punto1=new Punto();
        punto1.inicializar();
        punto1.imprimirCuadrante();
    }
}
