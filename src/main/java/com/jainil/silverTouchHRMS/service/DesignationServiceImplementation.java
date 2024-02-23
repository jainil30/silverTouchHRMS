package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.repository.DesignationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DesignationServiceImplementation {

    @Autowired
    private DesignationRepository designationRepository;
}
