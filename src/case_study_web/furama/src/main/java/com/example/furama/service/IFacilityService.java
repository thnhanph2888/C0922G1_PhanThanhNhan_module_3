package com.example.furama.service;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Facility;
import com.example.furama.model.FacilityType;

import java.util.List;

public interface IFacilityService {
     void addVillaFacility(Facility facility);
     void addHouseFacility(Facility facility);
     void addRoomFacility(Facility facility);

     List<FacilityType> getListFacilityType();

     List<AttachFacility> getListAttachFacility();

     List<Facility> getListFacility();

     void editFacility(Facility facility);

     void deleteFacilityById(String id);

     List<Facility> searchFacilityByNameAndCost(String name, String cost);
}
