package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.DocumentCategory;
import com.jainil.silverTouchHRMS.repository.DocumentCategoryRepository;

public class DocumentCategoryServiceImplementation implements DocumentCategoryService{

    private DocumentCategoryRepository documentCategoryRepository;
    @Override
    public void saveDocumentCategoryService(DocumentCategory documentCategory) {
        documentCategoryRepository.save(documentCategory);
    }

    @Override
    public DocumentCategory fetchDcById(Long empId) {
        return documentCategoryRepository.findByEmpId(empId);
    }

    @Override
    public void deleteDcById(Long empId) {
        documentCategoryRepository.deleteByEmpId(empId);
    }
}
