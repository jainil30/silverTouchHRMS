package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.repository.DesignationRepository;
import com.jainil.silverTouchHRMS.repository.DrivingLicenseNumberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DrivingLicenseNumberServiceImplementation implements DrivingLicenseNumberService{

    @Autowired
    private DrivingLicenseNumberRepository drivingLicenseNumberRepository;
}
