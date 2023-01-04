package com.example.user_management.dao;

import com.example.user_management.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;
    public User selectUser(int id);
    public List<User> selectAllUser();
    public boolean deleteUser(int id) throws SQLException;
    public boolean updateUser(User user) throws SQLException;
    public List<User> sortAscending(List<User> userList);
    public List<User> sortDescending(List<User> userList);
    public List<User> searchByCountry(String country);
}
