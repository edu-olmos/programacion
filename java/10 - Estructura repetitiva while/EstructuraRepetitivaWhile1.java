/*
Realizar un programa que imprima en pantalla los números del 1 al 100.
 */
public class EstructuraRepetitivaWhile1 {
    public static void main(String[] ar) {
        int x;
        x=1;
        while (x<=100) {
            System.out.print(x);
            System.out.print(" - ");
            x = x + 1;
        }
    }
}