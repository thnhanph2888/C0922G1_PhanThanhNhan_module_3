package com.example.furama.service.impl;

import com.example.furama.model.AttachFacility;
import com.example.furama.model.Contract;
import com.example.furama.repository.impl.ContractRepository;
import com.example.furama.service.IContractService;

import java.util.List;

public class ContractService implements IContractService {
    ContractRepository contractRepository = new ContractRepository();

    @Override
    public List<AttachFacility> getListFacility() {
        return contractRepository.getListAttachFacility();
    }

    @Override
    public List<AttachFacility> getListFacilityOfContract() {
        return contractRepository.getListFacilityOfContract();
    }

    @Override
    public List<Contract> getListContract() {
        return contractRepository.getListContract();
    }
}
