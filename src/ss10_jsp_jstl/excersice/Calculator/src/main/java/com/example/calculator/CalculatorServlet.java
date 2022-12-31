package com.example.calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", urlPatterns = {"/calculator"})
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float firstOperand = Float.parseFloat(request.getParameter("firstOperand"));
        float secondOperand = Float.parseFloat(request.getParameter("secondOperand"));
        String operator = request.getParameter("operator");
        float result = 0;
        String dataOutput = "";
        switch (operator) {
            case "+":
                result = firstOperand + secondOperand;
                dataOutput += "result: " + result;
                break;
            case "-":
                result = firstOperand - secondOperand;
                dataOutput += "result: " + result;
                break;
            case "*":
                result = firstOperand * secondOperand;
                dataOutput += "result: " + result;
                break;
            case "/":
                try {
                    result = firstOperand / Calculator.calculate(secondOperand);
                    dataOutput += "result: " + result;
                } catch (DivisionException e) {
                    dataOutput += "second operand can not 0!";
                }
                break;
        }
        request.setAttribute("result", dataOutput);
        request.getRequestDispatcher("result.jsp").forward(request,response);
    }
}
