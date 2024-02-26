package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.DrivingLicenseNumber;

public interface DrivingLicenseNumberService {

    public void saveDrivingLicenseNumber(DrivingLicenseNumber drivingLicenseNumber);

    public DrivingLicenseNumber fetchDLByEmpId(Long empId);
    public void deleteDLByEmpId(Long empId);
}
