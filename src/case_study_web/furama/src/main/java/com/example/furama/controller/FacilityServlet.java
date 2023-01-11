package com.example.furama.controller;

import com.example.furama.model.Facility;
import com.example.furama.service.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FacilityServlet", value = "/facility")
public class FacilityServlet extends HttpServlet {
    FacilityService facilityService = new FacilityService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "delete":
                showDeleteModal(request,response);
                break;
            default:
                showListFacility(request,response);
        }
    }

    private void showDeleteModal(HttpServletRequest request, HttpServletResponse response) {

    }

    private void showListFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Facility> facilityList = facilityService.getListFacility();
        request.setAttribute("facilityList", facilityList);
        request.getRequestDispatcher("view/list_facility.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "addVilla" :
                addVillaFacility(request,response);
                break;
                case "addHouse" :
                addHouseFacility(request,response);
                break;
                case "addRoom" :
                addRoomFacility(request,response);
                break;
            case "edit" :
                editFacility(request,response);
                break;
            case "delete":
                deleteFacility(request,response);
            case "search":
                searchFacility(request,response);
        }
    }

    private void searchFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nameSearch = request.getParameter("nameSearch");
        String costSearch = request.getParameter("costSearch");
        List<Facility> facilityList = facilityService.searchFacilityByNameAndCost(nameSearch, costSearch);
        request.setAttribute("facilityList", facilityList);
        request.getRequestDispatcher("view/list_facility.jsp").forward(request,response);
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           String id = request.getParameter("idDelete");
         facilityService.deleteFacilityById(id);
         showListFacility(request,response);
    }

    private void editFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id_facility");
        String name = request.getParameter("name_facility");
        String area = request.getParameter("area_facility");
        String cost = request.getParameter("cost_facility");
        String maxPeople = request.getParameter("max_people_facility");
        String rentTypeId = request.getParameter("rent_type_id_facility");
        String facilityTypeId = request.getParameter("facility_type_id");
        String standardRoom = request.getParameter("standard_room_facility");
        String descriptionOtherConvenience = request.getParameter("description_other_convenience_facility");
        String poolArea = request.getParameter("pool_area_facility");
        String numberOfFloors = request.getParameter("number_of_floors_facility");
        String facilityFree = request.getParameter("facility_free");
        Facility facility = new Facility(id,name,area,cost,maxPeople,rentTypeId,facilityTypeId,standardRoom,descriptionOtherConvenience,poolArea,numberOfFloors,facilityFree);
        facilityService.editFacility(facility);
        showListFacility(request,response);
    }

    private void addRoomFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id_room");
        String name = request.getParameter("name_room");
        String area = request.getParameter("area_room");
        String cost = request.getParameter("cost_room");
        String maxPeople = request.getParameter("max_people_room");
        String rentTypeId = request.getParameter("rent_type_id_room");
        String facilityFree = request.getParameter("facility_free_room");
        Facility facilityRoom = new Facility(id, name, area, cost, maxPeople, rentTypeId, "3"
                , facilityFree);
        facilityService.addRoomFacility(facilityRoom);
        showListFacility(request,response);
    }

    private void addHouseFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id_house");
        String name = request.getParameter("name_house");
        String area = request.getParameter("area_house");
        String cost = request.getParameter("cost_house");
        String maxPeople = request.getParameter("max_people_house");
        String rentTypeId = request.getParameter("rent_type_id_house");
        String standardRoom = request.getParameter("standard_room_house");
        String descriptionOtherConvenience = request.getParameter("description_other_convenience_house");
        String poolArea = request.getParameter("pool_area_house");
        Facility facilityHouse = new Facility(id, name, area, cost, maxPeople, rentTypeId, "2"
                , standardRoom, descriptionOtherConvenience, poolArea);
        facilityService.addHouseFacility(facilityHouse);
        showListFacility(request,response);
    }

    private void addVillaFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id_villa");
        String name = request.getParameter("name_villa");
        String area = request.getParameter("area_villa");
        String cost = request.getParameter("cost_villa");
        String maxPeople = request.getParameter("max_people_villa");
        String rentTypeId = request.getParameter("rent_type_id_villa");
        String standardRoom = request.getParameter("standard_room_villa");
        String descriptionOtherConvenience = request.getParameter("description_other_convenience_villa");
        String poolArea = request.getParameter("pool_area_villa");
        String numberOfFloors = request.getParameter("number_of_floors_villa");
        Facility facilityVilla = new Facility(id, name, area, cost, maxPeople, rentTypeId, "1"
                , standardRoom, descriptionOtherConvenience, poolArea, numberOfFloors);
        System.out.println(facilityVilla);
        facilityService.addVillaFacility(facilityVilla);
        showListFacility(request,response);
    }
}
