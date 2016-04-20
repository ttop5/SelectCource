package lib.Model;

/**
 * Created by ttop5 on 16-4-21.
 */
public class Notes {
    private String notes_id;
    private String title;
    private String start_time;
    private String stop_time;
    private String description;

    public Notes(){
        super();
    }
    public Notes(String notes_id, String title, String  start_time, String stop_time, String description){
        this.notes_id = notes_id;
        this.title = title;
        this.start_time = start_time;
        this.stop_time = stop_time;
        this.description = description;
    }

    public String getNotes_id() {
        return notes_id;
    }

    public void setNotes_id(String notes_id) {
        this.notes_id = notes_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getStop_time() {
        return stop_time;
    }

    public void setStop_time(String stop_time) {
        this.stop_time = stop_time;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
