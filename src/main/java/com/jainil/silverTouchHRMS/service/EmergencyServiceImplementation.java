package com.jainil.silverTouchHRMS.service;

import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.jainil.silverTouchHRMS.entity.Emergency;
import com.jainil.silverTouchHRMS.repository.EmergencyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmergencyServiceImplementation implements EmergencyService{

    @Autowired
    private EmergencyRepository emergencyRepository;
    @Override
    public void saveEmergency(Emergency emergency) {
        emergencyRepository.save(emergency);
    }

    @Override
    public Emergency fetchEmergencyByEmpId(Long empId) {
        return emergencyRepository.findEmergencyByEmployeeId(empId);
    }

    @Override
    public void deleteEmergencyByEmpId(Long empId) {
        emergencyRepository.deleteByEmpId(empId);
    }
}
