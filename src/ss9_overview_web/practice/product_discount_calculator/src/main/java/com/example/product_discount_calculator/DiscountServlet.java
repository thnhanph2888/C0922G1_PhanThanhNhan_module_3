package com.example.product_discount_calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", value = "/calculator")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float discountPercent = Float.parseFloat(request.getParameter("discount"));

        float discountAmount = (float) (price * discountPercent * 0.01);

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h2> Discount Amount: " + discountAmount);
        writer.println("<h2> Discount Price: " + (price - discountAmount));
        writer.println("</html>");
    }
}
