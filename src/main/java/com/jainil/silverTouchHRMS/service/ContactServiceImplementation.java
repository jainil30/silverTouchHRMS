package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactServiceImplementation implements ContactService{

    @Autowired
    private ContactRepository contactRepository;
}
