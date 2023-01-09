package com.example.furama.controller;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Customer;
import com.example.furama.model.Facility;
import com.example.furama.service.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    private static final CustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          String action = request.getParameter("action");
          if (action == null) {
              action = "";
          }
        if ("add".equals(action)) {
            showAddForm(request, response);
        } else {
            showListCustomer(request, response);
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = customerService.getListCustomer();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("view/list_customer.jsp").forward(request,response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/add_customer.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addCustomer(request,response);
                break;
            case "edit":
                editCustomer(request,response);
                break;
            case "delete":
                deleteCustomer(request,response);
                break;
            default:
                showListCustomer(request,response);
        }
    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("idEdit");
        String name = request.getParameter("name_customer");
        String dateOfBirth = request.getParameter("birthday_customer");
        String gender = request.getParameter("gender_customer");
        String idCard = request.getParameter("id_card_customer");
        String phoneNumber = request.getParameter("phone_customer");
        String email = request.getParameter("email_customer");
        String address = request.getParameter("address_customer");
        String customer_type_id = request.getParameter("customer_type_id");
        customerService.editCustomer(new Customer(id,name,dateOfBirth,gender,idCard,phoneNumber,email,customer_type_id,address));
        showListCustomer(request,response);
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {

    }
    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id= Integer.parseInt(request.getParameter("idDelete"));
        if (customerService.deleteById(id)) {
            request.setAttribute("message", "Delete successful!");
        } else {
            request.setAttribute("message", "Error delete");
        }
        showListCustomer(request,response);
    }
}
