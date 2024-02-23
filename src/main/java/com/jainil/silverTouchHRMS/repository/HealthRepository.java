package com.jainil.silverTouchHRMS.repository;

import com.jainil.silverTouchHRMS.entity.Health;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HealthRepository extends JpaRepository<Health, Long> {
}
