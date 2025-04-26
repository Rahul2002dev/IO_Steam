package jdbc_assigment.UpdataBasePayAndTest.DataBaseTesting.src.test;
import jdbc_assigment.UpdataBasePayAndTest.DataBaseTesting.src.main.java.Database.Database;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class Databasetest {

    @Test
    public void testcase(){
        Database db  = new Database();
        int ans = db.getDatabaseData();
        System.out.println(ans);
        assertEquals(ans,0);
    }

}
