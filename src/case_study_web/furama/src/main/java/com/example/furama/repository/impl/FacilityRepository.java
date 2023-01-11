package com.example.furama.repository.impl;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Facility;
import com.example.furama.model.FacilityType;
import com.example.furama.model.RentType;
import com.example.furama.repository.BaseRepository;
import com.example.furama.repository.IFacilityRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FacilityRepository implements IFacilityRepository {

    private static final String SEARCH_LIST_FACILITY = "select * from facility f\n" +
            "where f.name like ? and f.cost = ?";
     private static final String DELETE_FACILITY_BY_ID = "delete from facility f where f.id = ?";
    private static final String EDIT_FACILITY = " update facility f\n" +
            " set f.name = ?,\n" +
            " f.area = ?,\n" +
            " f.cost = ?,\n" +
            " f.max_people = ?,\n" +
            " f.rent_type_id = ?,\n" +
            " f.facility_type_id = ?,\n" +
            " f.standard_room = ?,\n" +
            " f.description_other_convenience = ?,\n" +
            " f.pool_area = ?,\n" +
            " f.number_of_floors = ?,\n" +
            " f.facility_free = ?\n" +
            " where f.id = ?";
    private static final String GET_LIST_FACILITY_JOIN = "select f.*,\n" +
            "       rt.name as name_rent_type,\n" +
            "       ft.name as name_facility_type \n" +
            "       from facility f\n" +
            "join rent_type rt on f.rent_type_id = rt.id\n" +
            "join facility_type ft on f.facility_type_id = ft.id";
    private static final String ADD_NEW_VILLA_FACILITY = "insert into facility (id, name, area, cost, max_people, rent_type_id, facility_type_id, standard_room, description_other_convenience, pool_area, number_of_floors)\n" +
            "value (?,?,?,?,?,?,?,?,?,?,?)";

    private static final String ADD_NEW_HOUSE_FACILITY = "insert into facility (id, name, area, cost, max_people, rent_type_id, standard_room, description_other_convenience, pool_area)\n\" +\n" +
            "\"value (?,?,?,?,?,?,?,?,?)";
    private static final String ADD_NEW_ROOM_FACILITY = "insert into facility (id, name, area, cost, max_people, rent_type_id, facility_free)\n\" +\n" +
            "            \"value (?,?,?,?,?,?,?)";
    private static final String GET_LIST_ATTACH_FACILITY = "select * from attach_facility ";
    private static final String GET_FACILITY_TYPE = "select * from facility_type ";

    @Override
    public void addVillaFacility(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW_VILLA_FACILITY);
            preparedStatement.setInt(1, Integer.parseInt(facility.getId()));
            preparedStatement.setString(2, facility.getName());
            preparedStatement.setInt(3, Integer.parseInt(facility.getArea()));
            preparedStatement.setDouble(4, Double.parseDouble(facility.getCost()));
            preparedStatement.setInt(5, Integer.parseInt(facility.getMaxPeople()));
            preparedStatement.setInt(6, Integer.parseInt(facility.getRentTypeId()));
            preparedStatement.setInt(7, Integer.parseInt(facility.getFacilityTypeId()));
            preparedStatement.setString(8, facility.getStandardRoom());
            preparedStatement.setString(9, facility.getDescriptionOtherConvenience());
            preparedStatement.setDouble(10, Double.parseDouble(facility.getPoolArea()));
            preparedStatement.setInt(11, Integer.parseInt(facility.getNumberOfFloors()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void addHouseFacility(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW_HOUSE_FACILITY);
            preparedStatement.setInt(1, Integer.parseInt(facility.getId()));
            preparedStatement.setString(2, facility.getName());
            preparedStatement.setInt(3, Integer.parseInt(facility.getArea()));
            preparedStatement.setDouble(4, Double.parseDouble(facility.getCost()));
            preparedStatement.setInt(5, Integer.parseInt(facility.getMaxPeople()));
            preparedStatement.setInt(6, Integer.parseInt(facility.getRentTypeId()));
            preparedStatement.setInt(7, Integer.parseInt(facility.getFacilityTypeId()));
            preparedStatement.setString(8, facility.getStandardRoom());
            preparedStatement.setString(9, facility.getDescriptionOtherConvenience());
            preparedStatement.setDouble(10, Double.parseDouble(facility.getPoolArea()));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void addRoomFacility(Facility facility) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_NEW_ROOM_FACILITY);
            preparedStatement.setInt(1, Integer.parseInt(facility.getId()));
            preparedStatement.setString(2, facility.getName());
            preparedStatement.setInt(3, Integer.parseInt(facility.getArea()));
            preparedStatement.setDouble(4, Double.parseDouble(facility.getCost()));
            preparedStatement.setInt(5, Integer.parseInt(facility.getMaxPeople()));
            preparedStatement.setInt(6, Integer.parseInt(facility.getRentTypeId()));
            preparedStatement.setInt(7, Integer.parseInt(facility.getFacilityTypeId()));
            preparedStatement.setString(8, facility.getFacilityFree());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

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
    public List<FacilityType> getListFacilityType() {
        List<FacilityType> serviceList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(GET_FACILITY_TYPE);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                serviceList.add(new FacilityType(id, name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return serviceList;
    }

    @Override
    public List<Facility> getListFacility() {
        List<Facility> facilityList = new ArrayList<>();
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(GET_LIST_FACILITY_JOIN);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String area = rs.getString("area");
                String cost = rs.getString("cost");
                String maxPeople = rs.getString("max_people");
                String rentTypeId = rs.getString("rent_type_id");
                String facilityTypeId = rs.getString("facility_type_id");
                String standardRoom = rs.getString("standard_room");
                String descriptionOtherConvenience = rs.getString("description_other_convenience");
                String poolArea = rs.getString("pool_area");
                String numberOfFloors = rs.getString("number_of_floors");
                String facilityFree = rs.getString("facility_free");
                String rentTypeName = rs.getString("name_rent_type");
                String facilityTypeName = rs.getString("name_facility_type");
                FacilityType facilityType = new FacilityType(facilityTypeId, facilityTypeName);
                RentType rentType = new RentType(rentTypeId, rentTypeName);
                facilityList.add(new Facility(id, name, area, cost, maxPeople, standardRoom, descriptionOtherConvenience, poolArea, numberOfFloors, facilityFree, facilityType, rentType));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }

    @Override
    public void editFacility(Facility facility) {
          Connection connection = BaseRepository.getConnectDB();
          try {
              PreparedStatement preparedStatement = connection.prepareStatement(EDIT_FACILITY);
              preparedStatement.setString(1, facility.getName());
              preparedStatement.setInt(2, Integer.parseInt(facility.getArea()));
              preparedStatement.setDouble(3, Double.parseDouble(facility.getCost()));
              preparedStatement.setInt(4, Integer.parseInt(facility.getMaxPeople()));
              preparedStatement.setInt(5, Integer.parseInt(facility.getRentTypeId()));
              preparedStatement.setInt(6, Integer.parseInt(facility.getFacilityTypeId()));
              preparedStatement.setString(7,facility.getStandardRoom());
              preparedStatement.setString(8,facility.getDescriptionOtherConvenience());
              preparedStatement.setDouble(9, Double.parseDouble(facility.getPoolArea()));
              preparedStatement.setInt(10, Integer.parseInt(facility.getNumberOfFloors()));
              preparedStatement.setString(11, facility.getFacilityFree());
              preparedStatement.setString(12, facility.getId());
              preparedStatement.executeUpdate();
          } catch (SQLException e) {
              e.printStackTrace();
          }
    }

    @Override
    public void deleteFacilityById(String id) {
        Connection connection = BaseRepository.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_FACILITY_BY_ID);
            preparedStatement.setInt(1, Integer.parseInt(id));
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Facility> searchFacilityByNameAndCost(String nameSearch, String costSearch) {
        Connection connection = BaseRepository.getConnectDB();
        List<Facility> facilityList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SEARCH_LIST_FACILITY);
            preparedStatement.setString(1,"%"+nameSearch+"%");
            preparedStatement.setDouble(2,Double.parseDouble(costSearch));
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String id = rs.getString("id");
                String name = rs.getString("name");
                String area = rs.getString("area");
                String cost = rs.getString("cost");
                String maxPeople = rs.getString("max_people");
                String rentTypeId = rs.getString("rent_type_id");
                String facilityTypeId = rs.getString("facility_type_id");
                String standardRoom = rs.getString("standard_room");
                String descriptionOtherConvenience = rs.getString("description_other_convenience");
                String poolArea = rs.getString("pool_area");
                String numberOfFloors = rs.getString("number_of_floors");
                String facilityFree = rs.getString("facility_free");
                 facilityList.add(new Facility(id,name,area,cost,maxPeople,rentTypeId,facilityTypeId,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return facilityList;
    }
}
