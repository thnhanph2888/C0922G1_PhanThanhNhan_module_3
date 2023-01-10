package com.example.furama.service;

import com.example.furama.model.Customer;
import com.example.furama.model.CustomerType;

import java.util.List;

public interface ICustomerService {

    List<Customer> getListCustomer();

    void addCustomer(Customer customer);

    boolean editCustomer (Customer customer);

    Customer findCustomerByNameAndIdCard(String name, String idCard);

    boolean deleteById(int id);

    List<CustomerType> getCustomerType();


}
