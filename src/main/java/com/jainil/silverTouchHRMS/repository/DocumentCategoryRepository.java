package com.jainil.silverTouchHRMS.repository;


import com.jainil.silverTouchHRMS.entity.DocumentCategory;
import com.jainil.silverTouchHRMS.service.DocumentCategoryService;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DocumentCategoryRepository extends JpaRepository<DocumentCategory, Long> {

    @Query(
            nativeQuery = true,
            value = "SELECT * FROM tbl_contact WHERE fk_employee_id = :employeeId"
    )
    DocumentCategory findByEmpId(@Param("employeeId") Long empId);



    @Query(
            nativeQuery = true,
            value = "DELETE FROM tbl_contact WHERE fk_employee_id = :employeeId"
    )
    void deleteByEmpId(@Param("employeeId") Long employeeId);
}
