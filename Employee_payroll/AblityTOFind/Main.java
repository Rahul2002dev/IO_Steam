package jdbc_assigment.AblityTOFind;

import com.mysql.cj.jdbc.CallableStatement;
import jdbc_assigment.Jdbc_Connection.jdbc_connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class Main {
    public static void main(String[] args) throws Exception {
       jdbc_connection con = new jdbc_connection();
       Connection connection = con.jdbcConnection();
       Statement statement = connection.createStatement();


       String Quary1 = "SELECT COUNT(gender) AS male_count FROM employee_records WHERE gender = 'M'";
       String Quary2 = "SELECT COUNT(gender) AS female_count FROM employee_records WHERE gender = 'f'";

        ResultSet rs = statement.executeQuery(Quary1);

        while(rs.next()){
            System.out.println(rs.getInt("male_count"));
        }

        rs = statement.executeQuery(Quary2);

        while(rs.next()){
            System.out.println(rs.getInt("female_count"));
        }

    }
}
