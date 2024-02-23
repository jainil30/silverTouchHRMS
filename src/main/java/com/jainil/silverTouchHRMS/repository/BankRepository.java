package com.jainil.silverTouchHRMS.repository;

import com.jainil.silverTouchHRMS.entity.Bank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


@Repository
public interface BankRepository extends JpaRepository<Bank, Long> {

    @Query(
            nativeQuery = true,
            value = "SELECT * FROM tbl_bank WHERE fk_employee_id = :employeeId\""
    )
    Bank findBankByEmployeeId(Long id);
}
