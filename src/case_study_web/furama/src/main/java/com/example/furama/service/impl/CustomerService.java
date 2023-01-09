package com.example.furama.service.impl;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Customer;
import com.example.furama.repository.impl.CustomerRepository;
import com.example.furama.service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {

    private static final CustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> getListCustomer() {
        return customerRepository.getListCustomer();
    }

    @Override
    public void addCustomer(Customer customer) {
        customerRepository.addCustomer(customer);
    }

    @Override
    public boolean editCustomer(Customer customer) {
        return customerRepository.editCustomer(customer);
    }

    @Override
    public Customer findCustomerById(int id) {
        return customerRepository.findCustomerById(id);
    }

    @Override
    public boolean deleteById(int id) {
        return customerRepository.deleteById(id);
    }
}
