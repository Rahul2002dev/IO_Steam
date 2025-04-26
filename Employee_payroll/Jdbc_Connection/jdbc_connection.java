package jdbc_assigment.Jdbc_Connection;

import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class jdbc_connection {

    private static final String url = "jdbc:mysql://localhost:3306/db1";
    private static final String username = "root";
    private static final String password = "rahul950@$";

    public Connection jdbcConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            Connection connection = DriverManager.getConnection(url,username,password);
            System.out.println("connection stablish properly");
            return connection;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
