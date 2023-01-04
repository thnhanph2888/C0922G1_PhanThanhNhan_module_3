package com.example.user_management.dao;

import com.example.user_management.model.User;

import java.util.Comparator;

public class ComparatorAscending implements Comparator<User> {
    @Override
    public int compare(User o1, User o2) {
        return o1.getName().compareTo(o2.getName());
    }
}
