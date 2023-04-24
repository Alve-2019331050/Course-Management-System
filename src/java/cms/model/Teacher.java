package cms.model;

public class Teacher extends User{

    public Teacher(String name, String dept, String email, String pwd) {
        super(name, dept, email, pwd);
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
