package com.jainil.silverTouchHRMS.service;


import com.jainil.silverTouchHRMS.entity.Family;

public interface FamilyService {

    public void saveFamily(Family family);


    public Family fetchFamilyByEmpId(Long empId);

    public void deleteFamilyByEmpId(Long empId);


}
