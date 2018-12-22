package mytags;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
//import javax.activation.*;
public class sendl
{
public int sendmail(String tto,String frm,String tsb,String tms)
{
String host="localhost";
Properties props=System.getProperties();
props.put("mail.smtp.host",host);
Session session=Session.getInstance(props,null);
try
{
MimeMessage msg=new MimeMessage(session);
msg.setFrom(new InternetAddress(frm));
//InternetAddress[] address={new InternetAddress(tto)};
msg.setRecipient(Message.RecipientType.TO,new InternetAddress(tto));
msg.setSubject(tsb);
//msg.setSentDate(new Date());
msg.setText(tms);
Transport.send(msg);
return 1;
}
catch(MessagingException e)
{
return 0;
//System.out.println(e);
}
}
}
