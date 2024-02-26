package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Passport;

public interface PassportService {
    public void savePassport(Passport passport);

    public Passport fetchPassportByEmployeeId(Long empId);
    public void deletePassportByEmployeeId(Long empId);
}
