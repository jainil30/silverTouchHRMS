package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Designation;
import com.jainil.silverTouchHRMS.repository.DesignationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DesignationServiceImplementation implements DesignationService{

    @Autowired
    private DesignationRepository designationRepository;

    @Override
    public void saveDesignation(Designation designation) {
        designationRepository.save(designation);
    }

    @Override
    public Designation fetchDesignationByEmpId(Long empId) {
        return designationRepository.findDesignationByEmployeeId(empId);
    }

    @Override
    public void deleteDesignationByEmpId(Long empId) {
        designationRepository.deleteByEmpId(empId);
    }


}
