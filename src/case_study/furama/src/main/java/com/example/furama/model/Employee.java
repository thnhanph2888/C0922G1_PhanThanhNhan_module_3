package com.example.furama.model;

public class Employee {
    private String name;
    private String date_of_birth;
    private String id_card;
    private String phone;
    private String email;
    private String education_degree_id;
    private String position_id;
    private double salary;

    public Employee () {

    }

    public Employee(String name, String date_of_birth, String id_card, String phone, String email, String education_degree_id, String position_id, double salary) {
        this.name = name;
        this.date_of_birth = date_of_birth;
        this.id_card = id_card;
        this.phone = phone;
        this.email = email;
        this.education_degree_id = education_degree_id;
        this.position_id = position_id;
        this.salary = salary;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDate_of_birth() {
        return date_of_birth;
    }

    public void setDate_of_birth(String date_of_birth) {
        this.date_of_birth = date_of_birth;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEducation_degree_id() {
        return education_degree_id;
    }

    public void setEducation_degree_id(String education_degree_id) {
        this.education_degree_id = education_degree_id;
    }

    public String getPosition_id() {
        return position_id;
    }

    public void setPosition_id(String position_id) {
        this.position_id = position_id;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }
}
