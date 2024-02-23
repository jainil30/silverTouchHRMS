package com.jainil.silverTouchHRMS.repository;


import com.jainil.silverTouchHRMS.entity.Photographs;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PhotographsRepository extends JpaRepository<Photographs, Long> {
}
