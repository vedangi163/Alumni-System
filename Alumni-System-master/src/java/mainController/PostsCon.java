/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainController;

import SessionFact.SessionFact;
//import beans.Applied_jobs;
import beans.Blogs;
import beans.Comments;
import beans.Events;
import beans.Jobs;
import beans.Notices;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Shubham Nehe
 */
public class PostsCon {
    private static Session session;
    
    //for adding blog. 
    public static int addBlog(Blogs b) 
    { 
        int i=0; 
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        i=(Integer)session.save(b);
        session.getTransaction().commit();
        session.close();
        return i;
    } 
    
    //Get all blogs
    public static List getAllBlogs()
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Blogs order by date DESC").list();
        session.close();
        return li;
    }
    
    public static List getAllNotices()
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Notices order by date DESC").list();
        session.close();
        return li;
    }
    
    //Get a blog
    public static Blogs getBlog(int blogID)
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Blogs where blogID=:bID").setInteger("bID", blogID).list();
        session.close();
        return ((Blogs)li.get(0));
    }
    
    //Update blog like count
    
    public static void updateBlogLikeCount(int blogID) 
    { 
        Blogs b=getBlog(blogID);
        b.setLikeCount(b.getLikeCount()+1);
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        //List li=session.createQuery("update Blogs set likeCount=likeCount+1 where blogID=:bID").setInteger("bID", blogID).list();
        session.update(b);
        session.getTransaction().commit();
        session.close();    
    }
    
    //postComment
    public static int postComment(Comments c) 
    { 
        int i=0; 
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        i=(Integer)session.save(c);
        session.getTransaction().commit();
        session.close();
        return i;
    } 
    
    //Get all comments
    public static List getAllComments(int bID)
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Comments where blogID=:bID order by date DESC").setInteger("bID", bID).list();
        session.close();
        return li;
    }
    
    //for adding blog. 
    public static int postJob(Jobs j) 
    { 
        int i=0; 
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        i=(Integer)session.save(j);
        session.getTransaction().commit();
        session.close();
        return i;
    }
    
    //Get all Jobs
    public static List getAllJobs()
    { 
        SimpleDateFormat f=new SimpleDateFormat("yyyy/MM/dd");
        String date=f.format(new Date());
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Jobs where deadline>=:today").setString("today", date).list();
        session.close();
        return li;
    }
     
    public static int applyForJob(Jobs job) 
    { 
        int i=0; 
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        i=(Integer)session.save(job);
        session.getTransaction().commit();
        session.close();
        return i;
    } 
    
    public static List returnFilteredJobs(String company,String designation,String location) 
    {  
        int i=0; 
        List li;
        session=SessionFact.getSessionFact().openSession();
        
        //Only Company
        if(!company.equals("Company") && designation.equals("Designation") && location.equals("Location"))
            li=session.createQuery("from Jobs where companyName=:c").setString("c", company).list();
        //Only Desigantion
        else if(company.equals("Company") && !designation.equals("Designation") && location.equals("Location"))
            li=session.createQuery("from Jobs where designation=:d").setString("d", designation).list();
        //Only Location
        else if(company.equals("Company") && designation.equals("Designation") && !location.equals("Location"))
            li=session.createQuery("from Jobs where location=:l").setString("l", location).list();
        //Only design and loc 
        else if(company.equals("Company") && !designation.equals("Designation") && !location.equals("Location"))
            li=session.createQuery("from Jobs where location=:l and designation=:d").setString("l", location).setString("d", designation).list();
        //Only comp and loc
        else if(!company.equals("Company") && designation.equals("Designation") && !location.equals("Location"))
            li=session.createQuery("from Jobs where companyName=:c and location=:l").setString("l", location).setString("c", company).list();
        //Only comp and design
        else if(!company.equals("Company") && !designation.equals("Designation") && location.equals("Location"))
            li=session.createQuery("from Jobs where companyName=:c and designation=:d").setString("c", company).setString("d", designation).list();
        //ALL
        else
            li=session.createQuery("from Jobs where companyName=:c and designation=:d and location=:l").setString("c", company).setString("d", designation).setString("l", location).list();
        
        session.close();
        return li;
    } 
    
    //for adding blog. 
    public static int postEvent(Events e) 
    { 
        int i=0; 
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        e.setImage("../assets/img/event/event-img-3.jpg"); 
        i=(Integer)session.save(e);
        session.getTransaction().commit();
        session.close();
        return i;
    }
    
    
    public static List getAllEvents()
    { 
        SimpleDateFormat f=new SimpleDateFormat("yyyy/MM/dd");
        String date=f.format(new Date());
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Events").list();
        session.close();
        return li;
    }
    
    public static int postNotice(Notices n) 
    { 
        int i=0; 
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        i=(Integer)session.save(n); 
        session.getTransaction().commit();
        session.close();
        return i;
    }
    
    
} 
