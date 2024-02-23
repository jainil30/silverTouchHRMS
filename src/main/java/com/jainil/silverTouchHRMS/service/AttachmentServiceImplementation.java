package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Attachment;
import com.jainil.silverTouchHRMS.repository.AttachmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AttachmentServiceImplementation implements AttachmentService{

    @Autowired
    private AttachmentRepository attachmentRepository;


    @Override
    public void saveAttachment(Attachment attachment) {
        attachmentRepository.save(attachment);
    }

    @Override
    public List<Attachment> fetchAllAttachments() {
        return attachmentRepository.findAll();
    }

    @Override
    public List<Attachment> fetchByEmployeeId(Long id) {
        return attachmentRepository.findByEmployeeId(id);
    }

    @Override
    public void deleteAttachmentbyEmpId(Long empId) {
        attachmentRepository.deleteByEmpId(empId);
    }

}
