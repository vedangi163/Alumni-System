/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mainController;

import SessionFact.SessionFact;
import beans.Alumni_data;
import static java.lang.System.out;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Shubham Nehe
 */
public class AlumniCon {
    private static Session session;
    
    public static Boolean login(String name,String pword) 
    {              
            session=SessionFact.getSessionFact().openSession();
            pword=md5(pword);
            List li=session.createQuery("from Alumni_data where name=:name and password=:pword").setString("name",name).setString("pword", pword).list(); 
            session.close();
            //sf.close(); 
            if(li.size()!=0)
                return true;
            else
                return false;
    }
    
    //Function to Encrypt Admin Password
    public static String md5(String pass)
    {
        try{
            MessageDigest md=MessageDigest.getInstance("MD5");
            byte[] messageDigest=md.digest(pass.getBytes());
            BigInteger num=new BigInteger(1,messageDigest);
            String hashText=num.toString(16);
            while(hashText.length()<32)
            {
                hashText="0"+hashText;
            } 
            return hashText;   
        }
        catch(Exception e)
        {  
            throw new RuntimeException(e);
        } 
    } 
    
    //for registering Alumni.
    public static int register(Alumni_data a) 
    { 
        int i=0; 
        a.setPassword(AlumniCon.md5(a.getPassword()));
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        i=(Integer)session.save(a);
        session.getTransaction().commit();
        session.close();
        return i;
    } 
    
    
    
    //Get all alumni based on year
    public static List getAlumniByYear(int year)
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Alumni_data where passOutYear=:year").setInteger("year", year).list();
        session.close();
        return li;
    }
    
    //Get all alumni based on year
    public static List getAlumniByYear(String[] yearList)
    { 
        int i;
        String s="from Alumni_data where passOutYear in (";
        for(i=0;i<(yearList.length)-1;i++)
        {
            s+=yearList[i]+","; 
        } 
        s+=yearList[i]+")"; 
        System.out.print("\n\n\n\n******************************************");
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery(s).list();
        session.close();
        return li;
    } 
    
    //Get all alumni data
    public static Alumni_data getAlumniData(int id)
    { 
        List li=null; 
        try{
            session=SessionFact.getSessionFact().openSession();
            li=session.createQuery("from Alumni_data where id=:id").setInteger("id", id).list();
            session.close();
            return (Alumni_data)li.get(0);
        }catch(Exception e){ out.print("Wait(AlumniCon.getAlumniData)"); } 
        return new Alumni_data();
    }
    
    //Get all available passOutYear's of present alumni members.
    public static List getPassOutYearList() 
    {
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("select passOutYear from Alumni_data group by passOutYear").list();
        session.close();
        return li;
    }  
    
     //Get all available dept's of present alumni members.
    public static List getDeptList() 
    {
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("select department from Alumni_data group by department").list();
        session.close();
        return li;
    } 
    
     //Get all available status's of present alumni members.
    public static List getStatusList() 
    {
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("select status from Alumni_data group by status").list();
        session.close();
        return li;
    }
    
    public static List getCollegeList() 
    {
        session=SessionFact.getSessionFact().openSession();
        List li=new ArrayList();
        try{
        li=session.createQuery("select college from Alumni_data group by college").list();
        }catch(Exception e){System.out.print("\n\n\n\n\n$\n$\n$");}
        session.close();
        return li; 
    } 
    
    //Get all alumni based on dept
    public static List getAlumniByDept(String department)
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Alumni_data where department=:department").setString("department", department).list();
        session.close();
        return li;
    }
    
    public static List getAlumniByStatus(String status)
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Alumni_data where status=:status").setString("status", status).list();
        session.close();
        return li;
    }
    
    //Get all alumni
    public static List getAllAlumni()
    { 
        //SimpleDateFormat f=new SimpleDateFormat("yyyy/MM/dd");
        //String date=f.format(new Date());
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Alumni_data").list();
        session.close();
        return li;
    }
    
    public static List returnFilteredJobs(String passOutYear,String department,String status) 
    {  
        int i=0; 
        List li;
        session=SessionFact.getSessionFact().openSession();
        //passOutYear dept status
        // company designation location
        
        //Only Company
        if(!passOutYear.equals("Year") && department.equals("Department") && status.equals("Status"))
            li=session.createQuery("from Alumni_data where passOutYear=:p").setString("p", passOutYear).list();
        //Only Desigantion
        else if(passOutYear.equals("Year") && !department.equals("Department") && status.equals("Status"))
            li=session.createQuery("from Alumni_data where department=:d").setString("d", department).list();
        //Only Location
        else if(passOutYear.equals("Year") && department.equals("Department") && !status.equals("Status"))
            li=session.createQuery("from Alumni_data where status=:s").setString("s", status).list();
        //Only design and loc 
        else if(passOutYear.equals("Year") && !department.equals("Department") && !status.equals("Status"))
            li=session.createQuery("from Alumni_data where status=:s and department=:d").setString("s", status).setString("d", department).list();
        //Only comp and loc
        else if(!passOutYear.equals("Year") && department.equals("Department") && !status.equals("Status"))
            li=session.createQuery("from Alumni_data where passOutYear=:p and status=:s").setString("s", status).setString("p", passOutYear).list();
        //Only comp and design
        else if(!passOutYear.equals("Year") && !department.equals("Department") && status.equals("Status"))
            li=session.createQuery("from Alumni_data where passOutYear=:p and department=:d").setString("p", passOutYear).setString("d", department).list();
        //ALL
        else
            li=session.createQuery("from Alumni_data where passOutYear=:p and department=:d and status=:s").setString("p", passOutYear).setString("d", department).setString("s", status).list();
        
        session.close();
        return li;
    }
    
    public static List editStudProfile(String uname)
  {
      List li =new ArrayList();
      List li1 =new ArrayList();
      Session s;
      SessionFactory sf;
      Query qr;
      Alumni_data ad = new Alumni_data();
      sf=SessionFact.getSessionFact();
      s=sf.openSession();
      qr=s.createQuery("from Alumni_data");
      if(qr!=null)
      {
       
          li = qr.list();
          if(li!=null)
          {
              ListIterator lit=li.listIterator();
              while(lit.hasNext())
              {
                  ad=(Alumni_data) lit.next();
                  if(uname.equals(ad.getPrn()))
                  {
                      li1.add(ad);
                      break;
                  }//end if 
              }//while
          }//inner if
      }//outer if
      return li1;
    }//end of method
    
    public static int saveProfile(Alumni_data ad,String uname)
  {
        int i=0;
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        List list=session.createQuery("from Alumni_data where prn=:prn").setString("prn",uname).list();
        Alumni_data sd1=(Alumni_data)list.get(0);
        //pw,emsil,num,ciyty
        sd1.setPassword(ad.getPassword());
        sd1.setMobileNo(ad.getMobileNo());
        sd1.setEmail(ad.getEmail());
        sd1.setAddress(ad.getAddress());
        sd1.setStatus(ad.getStatus());
        session.merge(sd1);
        i=1;
        session.getTransaction().commit();
        return i;
  }
    
    public static List returnFilteredAlumniClg(String passOutYear,String department,String college) 
    {  
        int i=0; 
        List li;
        session=SessionFact.getSessionFact().openSession();
        //passOutYear dept status
        // company designation location
        
        //Only Company
        if(!passOutYear.equals("Year") && department.equals("Department") && college.equals("College"))
            li=session.createQuery("from Alumni_data where passOutYear=:p").setString("p", passOutYear).list();
        //Only Desigantion
        else if(passOutYear.equals("Year") && !department.equals("Department") && college.equals("College"))
            li=session.createQuery("from Alumni_data where department=:d").setString("d", department).list();
        //Only Location
        else if(passOutYear.equals("Year") && department.equals("Department") && !college.equals("College"))
            li=session.createQuery("from Alumni_data where college=:s").setString("s", college).list();
        //Only design and loc 
        else if(passOutYear.equals("Year") && !department.equals("Department") && !college.equals("College"))
            li=session.createQuery("from Alumni_data where college=:s and department=:d").setString("s", college).setString("d", department).list();
        //Only comp and loc
        else if(!passOutYear.equals("Year") && department.equals("Department") && !college.equals("Status"))
            li=session.createQuery("from Alumni_data where passOutYear=:p and college=:s").setString("s", college).setString("p", passOutYear).list();
        //Only comp and design
        else if(!passOutYear.equals("Year") && !department.equals("Department") && college.equals("College"))
            li=session.createQuery("from Alumni_data where passOutYear=:p and department=:d").setString("p", passOutYear).setString("d", department).list();
        //ALL
        else
            li=session.createQuery("from Alumni_data where passOutYear=:p and department=:d and college=:s").setString("p", passOutYear).setString("d", department).setString("s", college).list();
        
        session.close();
        return li;
    }
    
    public static List getAlumniByCollege(String college)
    { 
        session=SessionFact.getSessionFact().openSession();
        List li=session.createQuery("from Alumni_data where college=:college").setString("college", college).list();
        session.close();
        return li;
    }
    
    
} 
