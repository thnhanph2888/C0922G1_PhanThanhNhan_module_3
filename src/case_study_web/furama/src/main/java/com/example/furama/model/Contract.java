package com.example.furama.model;

import java.util.List;

public class Contract {
    private Facility facility;
    private Customer customer;
    private String startDate;
    private String endDate;
    private String deposit;
    private String totalMoney;
    private List<AttachFacility> attachFacilityList;
    private String nameFacility;
    private String nameCustomer;
    public Contract() {

    }

    public Contract(Facility facility, Customer customer, String startDate, String endDate, String deposit, String totalMoney, List<AttachFacility> attachFacilityList, String nameFacility, String nameCustomer) {
        this.facility = facility;
        this.customer = customer;
        this.startDate = startDate;
        this.endDate = endDate;
        this.deposit = deposit;
        this.totalMoney = totalMoney;
        this.attachFacilityList = attachFacilityList;
        this.nameFacility = nameFacility;
        this.nameCustomer = nameCustomer;
    }

    public Contract(String nameFacility, String nameCustomer, String startDate, String endDate, String deposit, String total) {
        this.nameFacility = nameFacility;
        this.nameCustomer = nameCustomer;
        this.startDate = startDate;
        this.endDate = endDate;
        this.deposit = deposit;
        this.totalMoney = total;
    }

    public Facility getFacility() {
        return facility;
    }

    public void setFacility(Facility facility) {
        this.facility = facility;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(String totalMoney) {
        this.totalMoney = totalMoney;
    }

    public List<AttachFacility> getAttachFacilityList() {
        return attachFacilityList;
    }

    public void setAttachFacilityList(List<AttachFacility> attachFacilityList) {
        this.attachFacilityList = attachFacilityList;
    }

    public String getDeposit() {
        return deposit;
    }

    public void setDeposit(String deposit) {
        this.deposit = deposit;
    }

    public String getNameFacility() {
        return nameFacility;
    }

    public void setNameFacility(String nameFacility) {
        this.nameFacility = nameFacility;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }
}
