package com.jainil.silverTouchHRMS.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class Designation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long designationId;


    @NotBlank(message = "Designation cannot be empty")
    private String designationName;

    @OneToOne(mappedBy = "employeeDesignation")
    private Employee employee;
}
