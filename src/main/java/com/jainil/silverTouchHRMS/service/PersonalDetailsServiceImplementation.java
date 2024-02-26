package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.PersonalDetails;
import com.jainil.silverTouchHRMS.repository.PersonalDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonalDetailsServiceImplementation implements PersonalDetailsService{

    @Autowired
    private PersonalDetailsRepository personalDetailsRepository;

    @Override
    public void savePersonalDetails(PersonalDetails personalDetails) {
        personalDetailsRepository.save(personalDetails);
    }

    @Override
    public PersonalDetails fetchPersonalDetailsByEmployeeId(Long empId) {
        return personalDetailsRepository.findPersonalDetailsByEmployeeId(empId);
    }

    @Override
    public void deletePersonalDetailsByEmployeeId(Long empId) {
        personalDetailsRepository.deleteByEmpId(empId);
    }
}
