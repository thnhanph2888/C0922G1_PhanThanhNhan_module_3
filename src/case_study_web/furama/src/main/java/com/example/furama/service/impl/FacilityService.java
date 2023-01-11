package com.example.furama.service.impl;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Facility;
import com.example.furama.model.FacilityType;
import com.example.furama.repository.impl.FacilityRepository;
import com.example.furama.service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private static final FacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public void addVillaFacility(Facility facility) {
         facilityRepository.addVillaFacility(facility);
    }

    @Override
    public void addHouseFacility(Facility facility) {
        facilityRepository.addHouseFacility(facility);
    }

    @Override
    public void addRoomFacility(Facility facility) {
       facilityRepository.addRoomFacility(facility);
    }

    @Override
    public List<FacilityType> getListFacilityType() {
       return facilityRepository.getListFacilityType();
    }

    @Override
    public List<AttachFacility> getListAttachFacility() {
        return facilityRepository.getListAttachFacility();
    }

    @Override
    public List<Facility> getListFacility() {
        return facilityRepository.getListFacility();
    }

    @Override
    public void editFacility(Facility facility) {
        facilityRepository.editFacility(facility);
    }

    @Override
    public void deleteFacilityById(String id) {
        facilityRepository.deleteFacilityById(id);
    }

    @Override
    public List<Facility> searchFacilityByNameAndCost(String name, String cost) {
       return facilityRepository.searchFacilityByNameAndCost( name,  cost);
    }
}
