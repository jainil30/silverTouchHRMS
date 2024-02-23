package com.jainil.silverTouchHRMS.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DrivingLicenseNumberRepository extends JpaRepository<com.jainil.silverTouchHRMS.entity.DrivingLicenseNumber, Long> {


}
