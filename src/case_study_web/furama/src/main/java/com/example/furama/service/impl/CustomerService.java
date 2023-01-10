package com.example.furama.service.impl;
import com.example.furama.model.Customer;
import com.example.furama.model.CustomerType;
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
    public Customer findCustomerByNameAndIdCard(String name, String idCard) {
        return customerRepository.findCustomerByNameAndIdCard(name, idCard);
    }

    @Override
    public boolean deleteById(int id) {
        return customerRepository.deleteById(id);
    }

    @Override
    public List<CustomerType> getCustomerType() {
        return customerRepository.getCustomerType();
    }
}
