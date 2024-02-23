package com.jainil.silverTouchHRMS.entity;


import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Entity
@Table(name = "tbl_passport")
@Data
public class Passport {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long passportId;

    @Temporal(TemporalType.DATE)
    private Date dateOfExpiry;

    private String visaDetail;

}
