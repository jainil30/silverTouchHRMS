package com.jainil.silverTouchHRMS.repository;


import com.jainil.silverTouchHRMS.entity.Emergency;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmergencyRepository extends JpaRepository<Emergency, Long> {
}
