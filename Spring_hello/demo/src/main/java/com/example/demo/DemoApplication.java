package com.example.demo;

import com.example.demo.Bean.departmentBean;
import com.example.demo.Bean.employeeBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class DemoApplication {
    private static Logger log = LoggerFactory.getLogger(DemoApplication.class);
    public static void main(String[] args) {
        ApplicationContext context = SpringApplication.run(DemoApplication.class, args);
        departmentBean department = context.getBean(departmentBean.class);
        log.info(department.getDeptName());
        employeeBean employee = context.getBean(employeeBean.class);
        System.out.println(employee.showEmpDetails());

        //UC 6
//        log.info("Hello prashant");
    }
}
