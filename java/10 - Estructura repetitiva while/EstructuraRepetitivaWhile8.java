/*
Realizar un programa que imprima 25 términos de la serie 11 - 22 - 33 - 44, etc. (No se ingresan valores por teclado) 
*/

public class EstructuraRepetitivaWhile8 {
    public static void main(String[] ar) {
        int x,termino;
        x=1;
        termino=11;
        while (x<=25) {
            System.out.print(termino);
            System.out.print(" - ");
            x=x + 1;
            termino=termino +11;
        }
    }
}

