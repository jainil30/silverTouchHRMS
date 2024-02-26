package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.DrivingLicenseNumber;
import com.jainil.silverTouchHRMS.repository.DesignationRepository;
import com.jainil.silverTouchHRMS.repository.DrivingLicenseNumberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DrivingLicenseNumberServiceImplementation implements DrivingLicenseNumberService{

    @Autowired
    private DrivingLicenseNumberRepository drivingLicenseNumberRepository;

    @Override
    public void saveDrivingLicenseNumber(DrivingLicenseNumber drivingLicenseNumber) {
        drivingLicenseNumberRepository.save(drivingLicenseNumber);
    }

    @Override
    public DrivingLicenseNumber fetchDLByEmpId(Long empId) {
        return drivingLicenseNumberRepository.findDlByEmployeeId(empId);
    }

    @Override
    public void deleteDLByEmpId(Long empId) {
        drivingLicenseNumberRepository.deleteByEmpId(empId);
    }
}
