package jdbc_assigment.RetrievePayroll;

public class EmployeePayroll {
    int id;
    String firstName;
    String lastName;
    int salary;
    String date;
    String gender;
    String employeePhone;
    String address;
    int basicPay;
    int deductions;
    int taxablePay;
    int incomeTax;
    int netPay;
    String role;

    public EmployeePayroll(int id, String firstName, String lastName, int salary, String date, String gender,String employeePhone, String address, int basicPay, int deductions, int incomeTax, int taxablePay, int netPay, String role) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.salary = salary;
        this.date = date;
        this.gender = gender;
        this.employeePhone = employeePhone;
        this.address = address;
        this.basicPay = basicPay;
        this.deductions = deductions;
        this.incomeTax = incomeTax;
        this.taxablePay = taxablePay;
        this.netPay = netPay;
        this.role = role;
    }



    @Override
    public String toString() {
        return id + " | " + firstName + " " + lastName + " | " + salary + " | " + date + " | " +
                gender + " | " + employeePhone + " | " + address + " | Role: " + role + "  | " + netPay + "  | " + taxablePay +
                "  | " + incomeTax + " | " + deductions + " | " + basicPay;
    }

    int getBasicPay(){
        return basicPay;
    }
}
