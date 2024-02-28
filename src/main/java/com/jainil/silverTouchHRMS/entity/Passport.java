package com.jainil.silverTouchHRMS.entity;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Table(name = "tbl_passport")
@Data
@NoArgsConstructor
public class Passport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long passportId;


    private String passportNumber;

    @Temporal(TemporalType.DATE)
    private Date dateOfExpiry;

    private String visaDetail;

//    @OneToOne()
//    @JoinColumn(name = "fk_employee_id", referencedColumnName = "emp_id")
    @OneToOne(mappedBy = "employeePassport", cascade = CascadeType.ALL)
    private Employee employee;

}
