package com.example.calculator;

public class Calculator {
    static float calculate(float secondOperand) throws DivisionException {
        if (secondOperand == (float) 0) {
            throw new DivisionException();
        }
        return secondOperand;
    }
}
