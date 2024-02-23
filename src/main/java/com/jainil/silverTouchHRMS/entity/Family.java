package com.jainil.silverTouchHRMS.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@NoArgsConstructor
public class Family {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long familyId;

    @NotBlank
    private String firstName;

    @NotBlank
    private String middleName;

    @NotBlank
    private String lastName;

    @NotBlank
    private String relation;

    @NotBlank
    private Date dateOfBirth;

    private String gender;

    private Boolean isNominee;

    private Boolean isDependent;

    private Boolean isResidingWith;

    private String maritalStatus;

    private String occupation;

    private Long contactDetail;

    private String nationality;

    private Boolean canBeContactedInEmergency;

    private Boolean isPhysicallyDisabled;



    private String address;


    @OneToOne(mappedBy = "employeeFamily")
    private Employee employee;
}