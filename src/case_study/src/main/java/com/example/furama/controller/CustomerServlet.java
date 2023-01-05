package com.example.furama.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String action = request.getParameter("action");
          if (action == null) {
              action = "";
          }
          switch (action) {
              case "add":
                  showAddForm(request,response);
                  break;
              case "edit":
                  showEditForm(request,response);
                  break;
              default:
                  showListService(request,response);
          }
    }

    private void showListService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         request.getRequestDispatcher("view/list_customer.jsp").forward(request,response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("view/edit_customer.jsp").forward(request,response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/add_customer.jsp").forward(request,response);
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/list_customer.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
              doGet(request,response);
    }
}
