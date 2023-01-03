package com.example.productmanagement.repository;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();

    boolean create(Product product);

    Product findById(int id);

    boolean update(int id, Product product);

    boolean delete(int id);

    Product search(String name);
}
