package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Attachment;
import com.jainil.silverTouchHRMS.repository.AttachmentRepository;

import java.util.List;

public interface AttachmentService {

    public void saveAttachment(Attachment attachment);

    public List<Attachment> fetchAllAttachments();

    public List<Attachment> fetchByEmployeeId(Long empId);

    public void deleteAttachmentByEmpId(Long empId);
}
