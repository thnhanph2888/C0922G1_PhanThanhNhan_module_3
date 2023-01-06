package quadratic_equation_two;

import java.util.ArrayList;
import java.util.List;

public class QuadraticEquationTwo {
    public static void main(String[] args) {

    }
    public static List<Double> solveTheEquation(double a, double b, double c) {
        double dent = Math.pow(b,2) - 4*a*c;
        double x1, x2;
        List<Double> listEquation = new ArrayList<>();
        if (dent > 0) {
            x1 = (-b + Math.sqrt(dent))/2;
            x2 = (-b - Math.sqrt(dent))/2;
            listEquation.add(x1);
            listEquation.add(x2);
        } else if (dent == 0) {
            x1 = (-b + Math.sqrt(dent))/(2*a);
            x2 = x1;
            listEquation.add(x1);
            listEquation.add(x2);
        }
        return listEquation;
    }
}
