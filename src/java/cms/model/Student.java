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

    @Override
    public String getName() {
        return name;
    }

    @Override
    public String getDept() {
        return dept;
    }

    @Override
    public String getEmail() {
        return email;
    }

    @Override
    public String getPwd() {
        return pwd;
    }
}
