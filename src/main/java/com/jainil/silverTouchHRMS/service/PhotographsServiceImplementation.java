package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Photographs;
import com.jainil.silverTouchHRMS.repository.PhotographsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhotographsServiceImplementation implements PhotographsService{
    @Autowired
    private PhotographsRepository photographsRepository;

    @Override
    public void savePhotograph(Photographs photograph) {
        photographsRepository.save(photograph);
    }

    @Override
    public List<Photographs> fetchPhotographsByEmployeeId(Long empId) {
        return photographsRepository.findPhotographsByEmployeeId(empId);
    }

    @Override
    public void deletePhotographsByEmployeeId(Long empId) {
        photographsRepository.deleteByEmpId(empId);
    }
}
