package jdbc_assigment.UpdataBasePayAndTest.DataBaseTesting.src.main.java.Database;

import jdbc_assigment.Jdbc_Connection.jdbc_connection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Database {

        public int getDatabaseData(){
            int base_pay = 0;
            try {
                jdbc_connection con = new jdbc_connection();
                Connection connection = con.jdbcConnection();
                Statement statement = connection.createStatement();
                String query = "SELECT basic_pay FROM employee_records WHERE FIRST_NAME = ' terissa' AND LAST_NAME = 'smith'";

                ResultSet result = statement.executeQuery(query);

                while(result.next()){
                    base_pay = result.getInt("basic_pay");
                }

                connection.close();
                statement.close();

            }catch (Exception e){
                System.out.println(e.getMessage());
            }

            return base_pay;
        }

}
