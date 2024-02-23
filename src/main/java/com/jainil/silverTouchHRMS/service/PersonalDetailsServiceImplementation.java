package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.repository.PersonalDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonalDetailsServiceImplementation implements PersonalDetailsService{

    @Autowired
    private PersonalDetailsRepository personalDetailsRepository;
}
