package com.jainil.silverTouchHRMS.repository;

import com.jainil.silverTouchHRMS.entity.Designation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DesignationRepository extends JpaRepository<Designation, Long> {
}
