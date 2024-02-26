package com.jainil.silverTouchHRMS.service;


import com.fasterxml.jackson.databind.deser.CreatorProperty;
import com.jainil.silverTouchHRMS.entity.Family;
import com.jainil.silverTouchHRMS.repository.FamilyRepository;
import org.springframework.stereotype.Service;

@Service
public class FamilyServiceImplementation implements FamilyService{

    private FamilyRepository familyRepository;
    @Override
    public void saveFamily(Family family) {
        familyRepository.save(family);
    }

    @Override
    public Family fetchFamilyByEmpId(Long empId) {
        return familyRepository.findFamilyByEmployeeId(empId);
    }

    @Override
    public void deleteFamilyByEmpId(Long empId) {
        familyRepository.deleteByEmpId(empId);
    }
}
