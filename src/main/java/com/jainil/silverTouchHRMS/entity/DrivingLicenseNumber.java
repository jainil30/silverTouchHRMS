package com.jainil.silverTouchHRMS.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Future;
import lombok.Data;
import org.springframework.core.StandardReflectionParameterNameDiscoverer;

import java.util.Date;


@Entity
@Data
@Table(name = "tbl_license")
public class DrivingLicenseNumber {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long drivingLicenseNumber;


    private String vehicleType;


    @Temporal(TemporalType.DATE)
    private Date validUpto;

    private String state;

    private Boolean governmentVehicleProvided;
    private Boolean governmentVehicleUsedForOnDuty;


    private String detailsOfVehicleProvided;

    private Boolean isForeigner;

    private Boolean isAnyDisciplinaryProceeding;

    private String additionalInformation;

    //is resident of other country?
    @Temporal(TemporalType.DATE)
    private Date migrationDateOfIndia;

    private String migratedCountry;

    private String otherCountryAddress;


    @OneToOne(mappedBy = "employeeDrivingLicense", cascade = CascadeType.ALL)
//    @OneToOne
//    @OneToOne
//    @JoinColumn(name = "fk_employee_id")
    private Employee employee;
}
