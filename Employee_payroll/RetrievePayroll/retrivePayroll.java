package jdbc_assigment.RetrievePayroll;

import jdbc_assigment.Jdbc_Connection.jdbc_connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class retrivePayroll {
    public static void main(String[] args) {
        try {
            jdbc_connection con = new jdbc_connection();
            Connection connection = con.jdbcConnection();
            Statement statement = connection.createStatement();
            String quary = "select * from employee_records";
            ResultSet result = statement.executeQuery(quary);
            List<EmployeePayroll> list = new ArrayList<>();
            while(result.next()){
                EmployeePayroll payroll = new EmployeePayroll(
                        result.getInt("ID"),
                        result.getString("FIRST_NAME"),
                        result.getString("LAST_NAME"),
                        result.getInt("SALARY"),
                        result.getString("DATE"),
                        result.getString("GENDER"),
                        result.getString("EMPLOYEE_PHONE"),
                        result.getString("ADDRESS"),
                        result.getInt("basic_Pay"),
                        result.getInt("deductions"),
                        result.getInt("Taxable_Pay"),
                        result.getInt("Income_tax"),
                        result.getInt("net_pay"),
                        result.getString("role")
                );

                list.add(payroll);
            }

//            Printing payroll using list
            for(EmployeePayroll payroll  : list){
                System.out.println(payroll);
            }

            connection.close();

        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
}
