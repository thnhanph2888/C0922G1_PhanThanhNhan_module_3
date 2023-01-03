package com.example.productmanagement.repository.impl;
import com.example.productmanagement.model.Product;
import com.example.productmanagement.repository.IProductRepository;
import java.util.*;

public class ProductRepository implements IProductRepository {
    private static Map<Integer,Product> productList = new HashMap<>();

    static {
        productList.put(1,new Product(1, "car", 32232, "mau xanh"));
        productList.put(2,new Product(2, "bus", 332, "mau do"));
        productList.put(3,new Product(3, "bike", 32232, "mau den"));
        productList.put(4,new Product(4, "plane", 32232, "mau xam"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public boolean create(Product product) {
        return productList.put(product.getId(), product) != null;
    }

    @Override
    public Product findById(int id) {
        for (Map.Entry<Integer, Product> entry: productList.entrySet()) {
            if (entry.getKey() == id) {
                return entry.getValue();
            }
        }
        return null;
    }

    @Override
    public boolean update(int id, Product product) {
        productList.put(id,product);
        return false;
    }

    @Override
    public boolean delete(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == id) {
                productList.remove(i);
                return true;
            }
        }
        return false;
    }

    @Override
    public Product search(String name) {
        for (Map.Entry<Integer, Product> entry: productList.entrySet()) {
            if (entry.getValue().getName().equals(name)) {
                return entry.getValue();
            }
        }
        return null;
    }
}
