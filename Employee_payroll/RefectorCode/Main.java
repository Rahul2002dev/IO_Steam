package jdbc_assigment.RefectorCode;

public class Main {
    public static void main(String[] args) {
        try{
            PayrollDBservice pay = PayrollDBservice.getInstance();
            pay.getresult();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
