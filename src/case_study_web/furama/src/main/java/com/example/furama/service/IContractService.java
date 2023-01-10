package com.example.furama.service;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Contract;

import java.util.List;

public interface IContractService {
    List<AttachFacility> getListFacility();
    List<AttachFacility> getListFacilityOfContract();
    List<Contract> getListContract();

}
