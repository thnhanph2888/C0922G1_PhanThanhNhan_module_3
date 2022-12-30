package com.example.customer;

public class Student {
    String name;
    String dayOfBirth;
    String address;
    String image;

    public Student(String name, String dayOfBirth, String address, String img) {
        this.name = name;
        this.dayOfBirth = dayOfBirth;
        this.address = address;
        this.image = img;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayOfBirth() {
        return dayOfBirth;
    }

    public void setDayOfBirth(String dayOfBirth) {
        this.dayOfBirth = dayOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}