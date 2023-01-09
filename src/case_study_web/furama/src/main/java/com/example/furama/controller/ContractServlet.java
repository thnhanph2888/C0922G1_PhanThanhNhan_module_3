package com.example.furama.controller;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Contract;
import com.example.furama.service.impl.ContractService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ContractServlet", value = "/contract")
public class ContractServlet extends HttpServlet {
    ContractService contractService = new ContractService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "none":
                System.out.println("none");
                break;
            default:
                showListContract(request,response);
        }
    }

    private void showListContract(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contract> contractList = contractService.getListContract();
        List<AttachFacility> attachFacilityList = contractService.getListFacility();
        request.setAttribute("contractList", contractList);
        request.setAttribute("attachFacilityList", attachFacilityList);
        request.getRequestDispatcher("view/list_contract.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action == null) {
                action = "";
            }
            switch (action) {
                case "add_contract":
                    addContract(request,response);
                    break;
                case "add_attach_facility":
                    addAttachFacility(request,response);
                    break;
                default:
                    showListContract(request,response);
            }
    }

    private void addAttachFacility(HttpServletRequest request, HttpServletResponse response) {
    }

    private void addContract(HttpServletRequest request, HttpServletResponse response) {
    }
}
