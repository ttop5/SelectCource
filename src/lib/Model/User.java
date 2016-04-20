package lib.Model;

/**
 * Created by ttop5 on 16-4-20.
 */
public class User {
    private String email;
    private String password;
    private int role;
    private String name;

    public User(){
        super();
    }
    public User (String email, String password){
        this.email = email;
        this.password = password;
    }

    public String getEmail(){

        return email;
    }

    public void setEmail(String email){

        this.email = email;
    }

    public String getPassword(){

        return password;
    }

    public void setPassword(String password){

        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

