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
    private Long licenseNumber;


    private String vehicleType;


    @Temporal(TemporalType.DATE)
    private Date validUpto;

    private String state;

    private Boolean governmentVehicleProvided;
    private Boolean governmentVehicleUsedForOnDuty;


    private String detailsOfVehicleProvided;

    private Boolean isForeigner;

    private Boolean isAnyDisciplinaryProcedding;

    private String additionalInformation;


//    @OneToOne(mappedBy = "employeeDrivingLicense")
//    @OneToOne
    @OneToOne
    @JoinColumn(name = "fk_employee_id", referencedColumnName = "emp_id")
    private Employee employee;
}
