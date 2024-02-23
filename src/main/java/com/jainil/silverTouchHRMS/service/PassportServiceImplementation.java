package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.repository.PassportRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PassportServiceImplementation implements PassportService{

    @Autowired
    private PassportRepository passportRepository;
}
