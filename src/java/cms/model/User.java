package cms.model;

public class User {
    protected String name,dept,email,pwd;

    public User(String name, String dept, String email, String pwd) {
        this.name = name;
        this.dept = dept;
        this.email = email;
        this.pwd = pwd;
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
