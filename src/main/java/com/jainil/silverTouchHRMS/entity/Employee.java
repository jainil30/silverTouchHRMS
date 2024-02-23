package com.jainil.silverTouchHRMS.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Entity
@Table(name = "tbl_employee")
@Data
@NoArgsConstructor
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "emp_id")
    private Long employeeId;

    @NotBlank
    private String employeeCodePrefix;

    @NotBlank
    private Integer employeeCodeSufix;

    @NotBlank
    private String employeePanNumber;
    private String employeeOldEmployeeCode;

    @NotNull
    @Temporal(TemporalType.DATE)
    private Date employeeDateOfAppointment;



    private Long employeeBioMetricId;

    @NotBlank
    private String employeeSalution;

    @NotBlank
    private String employeeDepartment;

    @NotBlank
    private String employeeFirstName;

    @NotBlank
    private String employeeMiddleName;

    @NotBlank
    private String employeeLastName;


    private String employeeUnit;

    private Boolean employeeIsGazetted;



    @NotBlank
    private String employeeGroup;

    @NotBlank
    private String employeeEligibleFor;
    private Boolean employeeIsCoveredUnderGratuityAct;



    //Mappings
    @NotBlank
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_designation_id")
    private Designation employeeDesignation;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_bank_id")
    private Bank employeeBank;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_personal_id")
    private PersonalDetails employeePersonalDetails;


    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_contact_id")
    private Contact employeeContact;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_family_id")
    private Family employeeFamily;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_emergency_id")
    private Emergency employeeEmergency;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_nominee_id")
    private Nominee employeeNominee;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_health_id")
    private Health employeeHealth;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_photograph_id")
    private Photographs employeePhotograph;

    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_employee_id",referencedColumnName = "emp_id")
    private List<Attachment> employeeAttachments;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_driving_license_id")
    private DrivingLicenseNumber employeeDrivingLicense;





    public Employee(String employeeCodePrefix, Integer employeeCodeSufix, String employeePanNumber, String employeeOldEmployeeCode, Date employeeDateOfAppointment, Long employeeBioMetricId, String employeeSalution, String employeeDepartment, String employeeFirstName, String employeeMiddleName, String employeeLastName, String employeeUnit, Boolean employeeIsGazetted, Designation employeeDesignation, String employeeGroup, String employeeEligibleFor, Boolean employeeIsCoveredUnderGratuityAct) {
        this.employeeCodePrefix = employeeCodePrefix;
        this.employeeCodeSufix = employeeCodeSufix;
        this.employeePanNumber = employeePanNumber;
        this.employeeOldEmployeeCode = employeeOldEmployeeCode;
        this.employeeDateOfAppointment = employeeDateOfAppointment;
        this.employeeBioMetricId = employeeBioMetricId;
        this.employeeSalution = employeeSalution;
        this.employeeDepartment = employeeDepartment;
        this.employeeFirstName = employeeFirstName;
        this.employeeMiddleName = employeeMiddleName;
        this.employeeLastName = employeeLastName;
        this.employeeUnit = employeeUnit;
        this.employeeIsGazetted = employeeIsGazetted;
        this.employeeDesignation = employeeDesignation;
        this.employeeGroup = employeeGroup;
        this.employeeEligibleFor = employeeEligibleFor;
        this.employeeIsCoveredUnderGratuityAct = employeeIsCoveredUnderGratuityAct;
    }
}
