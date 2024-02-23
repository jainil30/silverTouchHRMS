package com.jainil.silverTouchHRMS.repository;


import com.jainil.silverTouchHRMS.entity.DocumentCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DocumentCategoryRepository extends JpaRepository<DocumentCategory, Long> {
}
