package lib.Model;

/**
 * Created by ttop5 on 15-9-10.
 */
public class User {
    private String email;
    private String password;
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
    public String getPassword(){

        return password;
    }
    public void setEmail(String email){

        this.email = email;
    }
    public void setPassword(String password){

        this.password = password;
    }
}

