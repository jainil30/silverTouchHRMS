package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Nominee;
import com.jainil.silverTouchHRMS.repository.NomineeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NomineeServiceImplementation implements NomineeService{

    @Autowired
    NomineeRepository nomineeRepository;

    @Override
    public void saveNominee(Nominee nominee) {
        nomineeRepository.save(nominee);
    }

    @Override
    public Nominee fetchNomineeByEmployeeId(Long empId) {
        return nomineeRepository.findNomineeByEmployee(empId);
    }

    @Override
    public void deleteNomineeByEmployeeId(Long empId) {
        nomineeRepository.deleteByEmpId(empId);
    }
}
