package com.example.furama.repository;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Contract;

import javax.xml.ws.Service;
import java.util.List;

public interface IContractRepository {
    List<AttachFacility> getListAttachFacility();

    List<Contract> getListContract();

    List<AttachFacility> getListFacilityOfContract();
}
