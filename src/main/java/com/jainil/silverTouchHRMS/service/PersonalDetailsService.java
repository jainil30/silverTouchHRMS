package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.PersonalDetails;

public interface PersonalDetailsService {

    public void savePersonalDetails(PersonalDetails personalDetails);

    public PersonalDetails fetchPersonalDetailsByEmployeeId(Long empId);


    public void deletePersonalDetailsByEmployeeId(Long empId);
}
