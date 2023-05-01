package cms.model;

public class Course {
    private final String title,code,dept,teacher;

    public Course(String title, String code, String dept, String teacher) {
        this.title = title;
        this.code = code;
        this.dept = dept;
        this.teacher = teacher;
    }

    public String getTitle() {
        return title;
    }

    public String getCode() {
        return code;
    }

    public String getDept() {
        return dept;
    }

    public String getTeacher() {
        return teacher;
    }
}
