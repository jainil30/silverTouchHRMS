package com.jainil.silverTouchHRMS.service;


import com.jainil.silverTouchHRMS.entity.Emergency;

public interface EmergencyService {

    public void saveEmergency(Emergency emergency);

    public Emergency fetchEmergencyByEmpId(Long empId);


    public void deleteEmergencyByEmpId(Long empId);
}
