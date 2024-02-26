package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Contact;

public interface ContactService {

    public void saveContactService(Contact contact);

    public Contact fetchContactByEmployeeId(Long empId);

    public void deleteContactByEmployeeId(Long empId);
}
