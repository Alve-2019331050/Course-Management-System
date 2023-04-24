package cms.model;

public class Student extends User{
    String regno;

    public Student(String regno, String name, String dept, String email, String pwd) {
        super(name, dept, email, pwd);
        this.regno = regno;
    }

    public String getRegno() {
        return regno;
    }

    public String getName() {
        return name;
    }

    public String getDept() {
        return dept;
    }

    public String getEmail() {
        return email;
    }

    public String getPwd() {
        return pwd;
    }
    
}
