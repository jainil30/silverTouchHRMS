package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.repository.PhotographsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PhotographsServiceImplementation implements PhotographsService{
    @Autowired
    private PhotographsRepository photographsRepository;
}
