package cms.model;

public class Teacher extends User{

    public Teacher(String name, String dept, String email, String pwd) {
        super(name, dept, email, pwd);
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
