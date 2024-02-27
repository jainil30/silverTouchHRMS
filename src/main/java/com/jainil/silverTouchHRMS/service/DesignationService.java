package com.jainil.silverTouchHRMS.service;


import com.jainil.silverTouchHRMS.entity.Designation;

import java.util.List;

public interface DesignationService {
    public void saveDesignation(Designation designation);

    public List<Designation> fetchAllDesignation();
    public Designation fetchDesignationByEmpId(Long empId);


    public void deleteDesignationByEmpId(Long empId);

    Designation fetchById(Long designationId);
}
