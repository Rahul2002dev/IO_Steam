package com.example.demo.Bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;

@Component
public class employeeBean {

    @Autowired
    private departmentBean depatment;


    public String showEmpDetails(){
        return "Employee name = Prashant Kumar"+ " Depatment name = " + depatment.getDeptName();
    }


}
