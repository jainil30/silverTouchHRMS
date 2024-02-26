package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Nominee;

public interface NomineeService {

    public void saveNominee(Nominee nominee);

    public Nominee fetchNomineeByEmployeeId(Long empId);
    public void deleteNomineeByEmployeeId(Long empId);
}
