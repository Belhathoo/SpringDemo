package com.employees.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;


@Getter
@Setter
@ToString
@NoArgsConstructor
@Entity
public class Employee implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(nullable = false, updatable = false)
    private Long id;
    private String name;
    private String email;
    private String phone;
    private String jobTitle;
    private String imgURL;
    @Column(nullable = false, updatable = false)
    private String employeeCode;



    public Employee(String name, String email, String phone, String jobTitle, String imgURL, String employeeCode) {
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.jobTitle = jobTitle;
        this.imgURL = imgURL;
        this.employeeCode = employeeCode;
    }
}
