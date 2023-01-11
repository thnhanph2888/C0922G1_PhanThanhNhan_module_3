package com.example.furama.repository;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Facility;
import com.example.furama.model.FacilityType;

import javax.swing.plaf.ListUI;
import java.util.List;

public interface IFacilityRepository {
    void addVillaFacility(Facility facility);
    void addHouseFacility(Facility facility);
    void addRoomFacility(Facility facility);

    List<AttachFacility> getListAttachFacility();

    List<FacilityType> getListFacilityType();

    List<Facility> getListFacility();

    void editFacility(Facility facility);

    void deleteFacilityById(String id);

    List<Facility> searchFacilityByNameAndCost(String name, String cost);

}
