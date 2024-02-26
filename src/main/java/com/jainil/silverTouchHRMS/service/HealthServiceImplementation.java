package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Health;
import com.jainil.silverTouchHRMS.repository.HealthRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HealthServiceImplementation implements HealthService{

    @Autowired
    private HealthRepository healthRepository;

    @Override
    public void saveService(Health health) {
        healthRepository.save(health);
    }

    @Override
    public Health fetchHealthByEmpId(Long empId) {
        return healthRepository.fetchHealthByEmplyeeId(empId);
    }

    @Override
    public void deleteHealthByEmpId(Long empId) {
        healthRepository.deleteByEmpId(empId);
    }
}
