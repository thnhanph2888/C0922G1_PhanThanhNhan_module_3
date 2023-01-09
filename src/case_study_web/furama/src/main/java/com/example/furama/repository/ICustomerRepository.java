package com.example.furama.repository;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Customer;

import java.util.List;

public interface ICustomerRepository {

    List<Customer> getListCustomer();

    void addCustomer(Customer customer);

    boolean editCustomer (Customer customer);

    Customer findCustomerById(int id);

    boolean deleteById(int id);

}
