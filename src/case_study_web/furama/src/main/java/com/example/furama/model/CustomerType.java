package com.example.furama.model;

public class CustomerType {
    private String id;
    private String name;

    public CustomerType(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public CustomerType(){
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
