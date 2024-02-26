package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.DocumentCategory;

public interface DocumentCategoryService {

    public void saveDocumentCategoryService(DocumentCategory DocumentCategory);

    public DocumentCategory fetchDcById(Long empId);

    public void deleteDcById(Long empId);
}
