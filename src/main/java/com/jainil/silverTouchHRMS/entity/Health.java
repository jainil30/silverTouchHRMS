package com.jainil.silverTouchHRMS.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Health {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long healthId;


    @NotNull
    private Float heightCms;

    private Float weightKgs;


    @NotBlank
    private String group;

    private String identificationMark1;
    private String identificationMark2;

    private Boolean physicallyHandicapped;


    @OneToOne(mappedBy = "employeeHealth")
    private Employee employee;
}
