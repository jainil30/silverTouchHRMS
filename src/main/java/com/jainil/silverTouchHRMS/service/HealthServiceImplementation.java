package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.repository.HealthRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HealthServiceImplementation implements HealthService{

    @Autowired
    private HealthRepository healthRepository;
}
