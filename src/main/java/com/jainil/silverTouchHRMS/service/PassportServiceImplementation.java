package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Passport;
import com.jainil.silverTouchHRMS.repository.PassportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PassportServiceImplementation implements PassportService{

    @Autowired
    private PassportRepository passportRepository;

    @Override
    public void savePassport(Passport passport) {
        passportRepository.save(passport);
    }

    @Override
    public Passport fetchPassportByEmployeeId(Long empId) {
        return passportRepository.findPassportByEmployeeId(empId);
    }

    @Override
    public void deletePassportByEmployeeId(Long empId) {
        passportRepository.deleteByEmpId(empId);
    }
}
