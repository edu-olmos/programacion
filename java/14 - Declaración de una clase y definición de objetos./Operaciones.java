/*
Implementar la clase operaciones. Se deben cargar dos valores enteros, calcular su suma, resta, multiplicación y división, cada una en un método, imprimir dichos resultados.
*/

import java.util.Scanner;
public class Operaciones {
    private Scanner teclado;
    int valor1,valor2;
    
    public void inicializar() {
        teclado=new Scanner(System.in);
        System.out.print("Ingrese primer valor:");
        valor1=teclado.nextInt();
        System.out.print("Ingrese segundo valor:");
        valor2=teclado.nextInt();
    }
    
    public void sumar() {
        int suma;
        suma=valor1+valor2;
        System.out.println("La suma es:"+suma);
    }
    
    public void restar() {
        int resta;
        resta=valor1-valor2;
        System.out.println("La resta es:"+resta);
    }
    
    public void multiplicar() {
        int multiplicacion;
        multiplicacion=valor1*valor2;
        System.out.println("La multiplicación es:"+multiplicacion);
    }
    
    public void dividir() {
        int division;
        division=valor1/valor2;
        System.out.println("La división es:"+division);
    }
    
    public static void main(String[] ar) {
        Operaciones opera;
        opera=new Operaciones();
        opera.inicializar();
        opera.sumar();
        opera.restar();
        opera.multiplicar();
        opera.dividir();
    }
}

