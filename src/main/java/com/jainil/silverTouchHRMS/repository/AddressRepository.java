package com.jainil.silverTouchHRMS.repository;


import com.jainil.silverTouchHRMS.entity.Address;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface AddressRepository extends JpaRepository<Address, Long> {

    @Query(
            nativeQuery = true,
            value = "DELETE FROM tbl_address WHERE fk_employee_id = :employeeId"
    )
    void deleteByEmpId(@Param("employeeId") Long employeeId);
}
