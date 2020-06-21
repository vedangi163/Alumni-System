package mainController;

import SessionFact.SessionFact;
import beans.Chat_data;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.hibernate.Session;
import org.hibernate.SessionFactory;


public class chatCon {
    
    private static Session session;
    private static SessionFactory sf;
    public static int saveMessage(int receiverId,int senderId,String msgData)
    { 
        int i=0;
        Chat_data cd = new Chat_data();
        java.sql.Timestamp sqlNow=new java.sql.Timestamp(new java.util.Date().getTime());
        cd.setTime(sqlNow.toString());
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        cd.setSenderId(senderId);
        cd.setReceiverId(receiverId);
        cd.setStatus("ns");
        cd.setMsgData(msgData);
        i=(Integer)session.save(cd);  
        session.getTransaction().commit();
        session.close();
        return i;
       
    }
    
    
    public static List getUnreadMsg(String receiverId)
    { 
        session=SessionFact.getSessionFact().openSession();
        session.beginTransaction();
        List li=session.createQuery("from Chat_data where receiverId=:receiverId and status=:status").setString("receiverId", receiverId).setString("status","ns").list();
        System.out.println("list count //////////// "+li.size());
        Chat_data cd = new Chat_data();
        if(li.size()!=0)
        {
            for(Object obj:li)
            {
                cd=(Chat_data)obj;
                System.out.println("ststus1 ststus1 ______________________________ "+cd.getMsgId());
                cd.setStatus("s");
                System.out.println("ststus2 ststus2 ______________________________ "+cd.getStatus());
                
            }
            session.merge(cd); 
        }
        session.getTransaction().commit();
        session.close();
        return li;
    }
    
    public static List getMyConnections(int userId)
    {
        session=SessionFact.getSessionFact().openSession();
        List recLi=session.createQuery("select distinct receiverId from Chat_data where senderId=:uId order by time DESC").setInteger("uId", userId).list();
        List senLi=session.createQuery("select distinct senderId from Chat_data where receiverId=:uId order by time DESC").setInteger("uId", userId).list();
        recLi.addAll(senLi);
        
        Set unique = new HashSet(recLi);
        List unique2=new ArrayList();
        unique2.addAll(unique);
        session.close();
        return unique2;
    } 
    
    public static List getMessages(int senId,int recId)
    { 
        session=SessionFact.getSessionFact().openSession();
        String q="from Chat_data where (receiverId="+recId+" and senderId="+senId+") or (receiverId="+senId+" and senderId="+recId+") order by time ASC";
        System.out.print("%%%%%%%%%%%%%%%%%%%%%\n\n\n\n\n\n\n\n\n\n\n"+q);
        List li=session.createQuery(q).list(); 
        session.close();
        return li;
    } 
};
