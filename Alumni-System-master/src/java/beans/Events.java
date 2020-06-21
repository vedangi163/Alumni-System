/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Shubham Nehe
 */
public class Events {
    private int eventID,clgID;
    private String title,eventDesc,date,image,startTime,endTime,place,alumniYear,type;

    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public int getClgID() {
        return clgID;
    }

    public void setClgID(int clgID) {
        this.clgID = clgID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEventDesc() {
        return eventDesc;
    }

    public void setEventDesc(String eventDesc) {
        this.eventDesc = eventDesc;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getAlumniYear() {
        return alumniYear;
    }

    public void setAlumniYear(String alumniYear) {
        this.alumniYear = alumniYear;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}
