package com.example.user_management.dao;

import com.example.user_management.model.User;

import java.util.Comparator;

public class ComparatorDescending implements Comparator<User> {
    @Override
    public int compare(User o1, User o2) {
        return o2.getName().compareTo(o1.getName());
    }
}
