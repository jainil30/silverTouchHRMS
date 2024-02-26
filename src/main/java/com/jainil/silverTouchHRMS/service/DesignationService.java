package com.jainil.silverTouchHRMS.service;


import com.jainil.silverTouchHRMS.entity.Designation;

public interface DesignationService {
    public void saveDesignation(Designation designation);

    public Designation fetchDesignationByEmpId(Long empId);


    public void deleteDesignationByEmpId(Long empId);
}
