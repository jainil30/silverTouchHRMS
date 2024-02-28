package com.jainil.silverTouchHRMS.repository;

import com.jainil.silverTouchHRMS.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {


    Employee findByEmployeeFirstName(String username);
}
