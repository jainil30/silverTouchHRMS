package com.jainil.silverTouchHRMS.repository;

import com.jainil.silverTouchHRMS.entity.Family;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FamilyRepository extends JpaRepository<Family, Long> {
}
