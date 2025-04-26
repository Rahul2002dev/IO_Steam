package jdbc_assigment.RefectorCode;

import jdbc_assigment.Jdbc_Connection.jdbc_connection;

import java.sql.*;

public class PayrollDBservice {

    private static PayrollDBservice instance;
    private Connection connection;
    private PreparedStatement payrollstatement;

    private PayrollDBservice() throws SQLException {
        jdbc_connection jdbcconn = new jdbc_connection();
        connection = jdbcconn.jdbcConnection();

    }

    public static PayrollDBservice getInstance() throws SQLException {
        if(instance == null){
            instance = new PayrollDBservice();
        }

        return instance;
    }

    public void getresult() throws SQLException{
        String quary = "SELECT * FROM employee_records";
        payrollstatement = connection.prepareStatement(quary);

        try(ResultSet rs = payrollstatement.executeQuery()){
            System.out.println("we are priting the payroll records");
            while(rs.next()){
                int id = rs.getInt("ID");
                String firstName = rs.getString("FIRST_NAME");
                String lastName = rs.getString("LAST_NAME");
                int salary = rs.getInt("SALARY");
                int basicPay = rs.getInt("basic_pay");
                String role = rs.getString("role");

                System.out.println(
                        "ID: " + id +
                                ", Name: " + firstName + " " + lastName +
                                ", Salary: " + salary +
                                ", Basic Pay: " + basicPay +
                                ", Role: " + role
                );
            }
            System.out.println("YYYYYYYYYYYYYYYYYYYYYYYYYEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE->>>>>>>>>>>");

        }catch(Exception e){
            System.out.println(e.fillInStackTrace());
        }
    }

}
