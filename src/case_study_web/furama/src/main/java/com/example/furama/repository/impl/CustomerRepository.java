package com.example.furama.repository.impl;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Customer;
import com.example.furama.model.CustomerType;
import com.example.furama.repository.BaseRepository;
import com.example.furama.repository.ICustomerRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    private static List<Customer> customerList = new ArrayList<>();
    private static final String SELECT_ALL_CUSTOMER_JOIN = "select c.*, ct.name as customer_type from customer c\n" +
            "    join customer_type ct\n" +
            "    on c.customer_type_id = ct.id;";
    private static final String ADD_NEW_CUSTOMER = "insert into customer (name, date_of_birth, gender, id_card, phone_number, email, address, customer_type_id) values (?,?,?,?,?,?,?,?)";
    private static final String EDIT_CUSTOMER = "update customer c   \n" +
            "set c.name = ?,\n" +
            "c.date_of_birth = ?,\n" +
            "c.gender = ?,\n" +
            "c.id_card = ?,\n" +
            "c.phone_number = ?,\n" +
            "c.email = ?,\n" +
            "c.address = ?,\n" +
            "c.customer_type_id = ?\n" +
            "where c.id = ?;";
    private static final String DELETE_CUSTOMER = "delete from customer where id = ?";
    @Override
    public List<Customer> getListCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER_JOIN);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                String dateOfBirth = resultSet.getString("date_of_birth");
                String gender = resultSet.getString("gender");
                String idCard = resultSet.getString("id_card");
                String phoneNumber = resultSet.getString("phone_number");
                String email = resultSet.getString("email");
                String address = resultSet.getString("address");
                String customer_type_id = resultSet.getString("customer_type_id");
                String customer_type_name = resultSet.getString("customer_type");
                CustomerType customerType = new CustomerType(customer_type_id, customer_type_name);
                Customer customer = new Customer(id, name, dateOfBirth, gender, idCard, phoneNumber, email, customerType, customer_type_id, address);
                customerList.add(customer);
            }
            return customerList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void addCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getBirthday());
            preparedStatement.setString(3, customer.getGender());
            preparedStatement.setString(4, customer.getId_card());
            preparedStatement.setString(5, customer.getPhone());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setString(8, customer.getCustomer_type_id());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean editCustomer(Customer customer) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(EDIT_CUSTOMER);
            preparedStatement.setString(1, customer.getName());
            preparedStatement.setString(2, customer.getBirthday());
            preparedStatement.setInt(3, Integer.parseInt(customer.getGender()));
            preparedStatement.setString(4, customer.getId_card());
            preparedStatement.setString(5, customer.getPhone());
            preparedStatement.setString(6, customer.getEmail());
            preparedStatement.setString(7, customer.getAddress());
            preparedStatement.setString(8, customer.getCustomer_type_id());
            preparedStatement.setInt(9, Integer.parseInt(customer.getId()));
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Customer findCustomerById(int id) {
        return null;
    }

    @Override
    public boolean deleteById(int id) {
        Connection connection = BaseRepository.getConnectDB();
        boolean rowDelete = false;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_CUSTOMER);
            preparedStatement.setInt(1, id);
            rowDelete = preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDelete;
    }
}
