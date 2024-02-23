package com.jainil.silverTouchHRMS.repository;

import com.jainil.silverTouchHRMS.entity.PersonalDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonalDetailsRepository extends JpaRepository<PersonalDetails, Long> {
}
