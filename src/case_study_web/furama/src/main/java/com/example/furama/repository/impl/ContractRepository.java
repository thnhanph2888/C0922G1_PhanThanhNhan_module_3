package com.example.furama.repository.impl;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Contract;
import com.example.furama.repository.BaseRepository;
import com.example.furama.repository.IContractRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ContractRepository implements IContractRepository {
    private static final String GET_LIST_CONTRACT = "select f.name name_facility, c.name name_customer, ca.start_date, ca.end_date, ca.deposit, f.cost + (cd.quantity * af.cost) as total\n" +
            "from contract ca\n" +
            "join facility f on ca.facility_id = f.id\n" +
            "join customer c on ca.customer_id = c.id\n" +
            "join contract_detail cd on cd.contract_id = ca.id\n" +
            "join attach_facility af on af.id = cd.attach_facility_id ";
    private static final String GET_LIST_ATTACH_FACILITY_OF_CONTRACT = "select af.name from attach_facility af join contract_detail cd on cd.attach_facility_id = af.id";
    private static final String GET_LIST_ATTACH_FACILITY = "select * from attach_facility";
    @Override
    public List<AttachFacility> getListAttachFacility() {
        List<AttachFacility> attachFacilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(GET_LIST_ATTACH_FACILITY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("id");
                String name = resultSet.getString("name");
                attachFacilityList.add(new AttachFacility(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return attachFacilityList;
    }

    @Override
    public List<Contract> getListContract() {
        List<Contract> contractList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(GET_LIST_CONTRACT);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String nameFacility = rs.getString("name_facility");
                String nameCustomer = rs.getString("name_customer");
                String startDate = rs.getString("start_date");
                String endDate = rs.getString("end_date");
                String deposit = rs.getString("deposit");
                String total = rs.getString("total");
                contractList.add(new Contract(nameFacility, nameCustomer, startDate, endDate, deposit, total));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return contractList;
    }

    @Override
    public List<AttachFacility> getListFacilityOfContract() {
         List<AttachFacility> attachFacilityList = new ArrayList<>();
         Connection connection = BaseRepository.getConnectDB();
         try {
             PreparedStatement preparedStatement = connection.prepareStatement(GET_LIST_ATTACH_FACILITY_OF_CONTRACT);
             ResultSet rs = preparedStatement.executeQuery();
             while (rs.next()) {
                 String id = rs.getString("id");
                 String name = rs.getString("name");
                 attachFacilityList.add(new AttachFacility(id, name));
             }
         } catch (SQLException e) {
             e.printStackTrace();
         }
         return attachFacilityList;
    }
}
