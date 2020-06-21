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
public class Blogs {
    private int blogID,alumniID,likeCount;
    private String title,content,date,image;

    public int getBlogID() {
        return blogID;
    }

    public void setBlogID(int blogID) {
        this.blogID = blogID;
    }

    public int getAlumniID() {
        return alumniID;
    }

    public void setAlumniID(int alumniID) {
        this.alumniID = alumniID;
    }

    public int getLikeCount() {
        return likeCount;
    }

    public void setLikeCount(int likeCount) {
        this.likeCount = likeCount;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
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
    
}
