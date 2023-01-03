package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface IProductService {
     List<Product> findAll();

     Product findById(int id);

     boolean create(Product product);

     boolean update(int id, Product product);

     boolean delete(int id);

     Product search(String name);
}
