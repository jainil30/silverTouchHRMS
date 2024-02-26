package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Photographs;

import java.util.List;

public interface PhotographsService {

    public void savePhotograph(Photographs photographs);

    public List<Photographs> fetchPhotographsByEmployeeId(Long empId);



    public void deletePhotographsByEmployeeId(Long empId);
}
