package lib.Model;

/**
 * Created by ttop5 on 16-4-22.
 */
public class Classroom {
    private String location;
    private  String capacity;

    public Classroom(){
        super();
    }
    public Classroom(String location, String capacity){
        this.location = location;
        this.capacity = capacity;
    }

    public String getCapacity() {
        return capacity;
    }

    public void setCapacity(String capacity) {
        this.capacity = capacity;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }
}
