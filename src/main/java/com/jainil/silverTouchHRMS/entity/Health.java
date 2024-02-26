package com.jainil.silverTouchHRMS.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@Table(name = "tbl_health")
public class Health {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long healthId;


    @NotNull
    private Float heightCms;

    private Float weightKgs;


    @NotBlank
    private String healthGroup;

    private String identificationMark1;
    private String identificationMark2;

    private Boolean physicallyHandicapped;


//    @OneToOne(mappedBy = "employeeHealth")
    @OneToOne
    @JoinColumn(name = "fk_employee_id", referencedColumnName = "emp_id")
    private Employee employee;
}
