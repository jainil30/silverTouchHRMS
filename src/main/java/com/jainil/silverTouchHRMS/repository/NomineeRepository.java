package com.jainil.silverTouchHRMS.repository;

import com.jainil.silverTouchHRMS.entity.Nominee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NomineeRepository extends JpaRepository<Nominee, Long> {
}
