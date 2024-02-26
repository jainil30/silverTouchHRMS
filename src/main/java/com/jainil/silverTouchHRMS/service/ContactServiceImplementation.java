package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Contact;
import com.jainil.silverTouchHRMS.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactServiceImplementation implements ContactService{

    @Autowired
    private ContactRepository contactRepository;

    @Override
    public void saveContactService(Contact contact) {
        contactRepository.save(contact);
    }

    @Override
    public Contact fetchContactByEmployeeId(Long empId) {
         return contactRepository.findContactByEmployeeId(empId);
    }

    @Override
    public void deleteContactByEmployeeId(Long empId) {
        contactRepository.deleteByEmpId(empId);
    }
}
