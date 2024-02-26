package com.jainil.silverTouchHRMS.entity;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@Table(name= "tbl_document_category")
public class DocumentCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long documentCategoryId;


    @NotBlank
    private String documentCategoryName;

    @OneToOne(mappedBy = "documentCategory")
    @JoinColumn(name = "fk_attachment_id", referencedColumnName = "attachmentId")
//    @OneToOne
    private Attachment attachmentId;
}
