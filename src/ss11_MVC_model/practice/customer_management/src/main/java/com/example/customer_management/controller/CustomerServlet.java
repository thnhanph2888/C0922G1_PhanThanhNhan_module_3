package com.example.customer_management.controller;

import com.example.customer_management.model.Customer;
import com.example.customer_management.service.CustomerServiceImpl;
import com.example.customer_management.service.ICustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customers")
public class CustomerServlet extends HttpServlet {

    private final ICustomerService customerService = new CustomerServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request, response);
                break;
            case "view":
                viewCustomer(request,response);
                break;
            default:
                listCustomers(request, response);
                break;
        }
    }

    private void viewCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = this.customerService.findById(id);
        if (customer == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("customer", customer);
            try {
                request.getRequestDispatcher("customer/view.jsp").forward(request,response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createCustomer(request, response);
                break;
            case "edit":
                updateCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            default:
                listCustomers(request, response);
                break;
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) {
       int id = Integer.parseInt(request.getParameter("id"));
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String address = request.getParameter("address");
       Customer customer = this.customerService.findById(id);
       if (customer == null) {
           request.getRequestDispatcher("error-404.jsp");
       } else {
           customer.setName(name);
           customer.setEmail(email);
           customer.setAddress(address);
           this.customerService.update(id,customer);
           request.setAttribute("customer",customer);
           request.setAttribute("message","Customer information was updated");
           try {
               request.getRequestDispatcher("customer/edit.jsp").forward(request,response);
           } catch (ServletException e) {throw new RuntimeException(e);
           } catch (IOException e) {
               throw new RuntimeException(e);
           }
       }
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int id = (int) (Math.random() * 10000);

        Customer customer = new Customer(id, name, email, address);
        this.customerService.save(customer);
        request.getRequestDispatcher("customer/jsp");
        request.setAttribute("message", "New customer was create");
        try {
            request.getRequestDispatcher("customer/create.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
            int id = Integer.parseInt(request.getParameter("id"));
            Customer customer = this.customerService.findById(id);
            if (customer == null) {
                    request.getRequestDispatcher("error-404.jsp");
            } else {
                   this.customerService.remove(id);
                try {
                    response.sendRedirect("/customers");
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        Customer customer = this.customerService.findById(id);
        if (customer == null) {
            request.getRequestDispatcher("error-404.jsp");
        } else {
            request.setAttribute("customer", customer);
            try {
                request.getRequestDispatcher("customer/edit.jsp").forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
             int id = Integer.parseInt(request.getParameter("id"));
             Customer customer = this.customerService.findById(id);
             if (customer == null) {
                 request.getRequestDispatcher("error-404.jsp");
             } else {
                 request.setAttribute("customer", customer);
                 try {
                     request.getRequestDispatcher("customer/delete.jsp").forward(request,response);
                 } catch (ServletException e) {
                     throw new RuntimeException(e);
                 } catch (IOException e) {
                     throw new RuntimeException(e);
                 }
             }
    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("customer/create.jsp").forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void listCustomers(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customers = this.customerService.findAll();
        request.setAttribute("customers", customers);

        try {
            request.getRequestDispatcher("customer/list.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
