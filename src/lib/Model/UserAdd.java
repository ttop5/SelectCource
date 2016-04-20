package lib.Model;

/**
 * Created by ttop5 on 16-4-22.
 */
public class UserAdd {
    private String school_num;
    private String name;
    private String grade;
    private String school;
    private String major;
    private String email;
    private String password;
    private String role;
    private String sex;
    private String qq;
    private String phone;
    private String adress;

    public UserAdd() {
        super();
    }

    public UserAdd(String school_num, String name, String grade, String school, String major, String email, String password, String role, String sex, String qq, String phone, String adress) {
        this.school_num = school_num;
        this.name = name;
        this.grade = grade;
        this.school = school;
        this.major = major;
        this.email = email;
        this.password = password;
        this.role = role;
        this.sex = sex;
        this.qq = qq;
        this.phone = phone;
        this.adress = adress;
    }

    public String getSchool_num() {
        return school_num;
    }

    public void setSchool_num(String school_num) {
        this.school_num = school_num;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }
}