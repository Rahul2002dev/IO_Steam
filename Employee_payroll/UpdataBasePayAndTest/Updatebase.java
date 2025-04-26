package jdbc_assigment.UpdataBasePayAndTest;

import jdbc_assigment.Jdbc_Connection.jdbc_connection;
import jdbc_assigment.RetrievePayroll.EmployeePayroll;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Updatebase {
    public static void main(String[] args) {
        try {
            jdbc_connection con = new jdbc_connection();
            Connection connection = con.jdbcConnection();
            Statement statement = connection.createStatement();
            String quary = "select * from employee_records";
            ResultSet result = statement.executeQuery(quary);
//            update payroll

            String quary3 = String.format("UPDATE employee_records SET basic_pay = 300000 WHERE FIRST_NAME = 'terissa' AND LAST_NAME = 'smith'" );
            int roweffected = statement.executeUpdate(quary3);
            if(roweffected > 0){
                System.out.println("data inserted successfully");
            }else{
                System.out.println("data not insert ed");
            }

//            Printing payroll using list
            connection.close();
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
