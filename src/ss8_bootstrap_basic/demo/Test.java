package demo;

import java.util.Scanner;

public class Test {

    static void draw(int n) {
        for (int j = 0; j < n / 2; j++) {
            for (int i = 0; i < j; i++) {
                System.out.print("   ");
            }
            for (int i = 0; i < n - j * 2; i++) {
                System.out.print(" * ");
            }
            for (int i = 0; i < j; i++) {
                System.out.print("   ");
            }
            System.out.println("");
        }

        for (int j = 1; j <= n / 2; j++) {
            for (int i = 0; i < n / 2 - j ; i++) {
                System.out.print("   ");
            }
            for (int i = 0; i < j * 2 ; i++) {
                System.out.print(" * ");
            }
            for (int i = 0; i < n / 2 - j ; i++) {
                System.out.print("   ");
            }
            System.out.println("");
        }
    }

    public static void main(String[] args) {
        int n;
        do {
            System.out.println("Nhập số chẵn");
            Scanner sc = new Scanner(System.in);
             n = Integer.parseInt(sc.nextLine());
        } while (!(n % 2 == 0));
        Test.draw(n);
    }
}
