package mytags;
import java.sql.*;
import java.util.*;
import javax.servlet.http.*;
public class drocls
  {
   Vector pnm=new Vector();
   Vector prc=new Vector();
   Vector cap=new Vector();
   Vector tqt=new Vector();
   Vector amt=new Vector();
   Vector pid=new Vector();
   String oqt,coun;
    Connection con;
   Statement st,st1,st2;
   ResultSet rs,rs1,rs2;
   int flag=0;
   double tch=0.0;
/* public void setCountry(String coun)
     {
     this.coun=coun;
     }*/
 public void processRequest(HttpServletRequest r,String rdc,String coun)
    {
     try
      {
      Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


      st=con.createStatement();
      st1=con.createStatement();
      st2=con.createStatement();
      rs2=st2.executeQuery("select country from rdealers where rdcode='"+rdc+"'");
      rs2.next();
      coun=rs2.getString(1);
      }
      catch(Exception e)
      {
      System.out.println(e);
      }
   if(r.getParameter("hideo").equals("true"))
   {if(r.getParameter("submit").equals("1.ADD TO CART"))
 {  System.out.println("hai");
    oqt=r.getParameter("qtyo");
    try
   {
String q="select trchge from chrges where country='"+coun+"'";
rs=st.executeQuery(q);
System.out.println(q);
String q1="select proname,capacity,deschge,prodid from products where prodid='"+r.getParameter("pido")+"'";
rs1=st1.executeQuery(q1);
System.out.println(q1);
flag=1;
    }
 catch(Exception e){System.out.println(e);}
  }}
 if(r.getParameter("hidef").equals("true")){
 if(r.getParameter("submit").equals("2.ADD TO CART"))
 {
 oqt=r.getParameter("qtyf");
  try
   {
String q="select trchge from chrges where country='"+coun+"'";
rs=st.executeQuery(q);
String q1="select proname,capacity,deschge,prodid from products where prodid='"+r.getParameter("pidf")+"'";
rs1=st1.executeQuery(q1);
flag=1;
    }
 catch(Exception e){System.out.println(e);}
}  }
 if(r.getParameter("hides").equals("true")){
  if(r.getParameter("submit").equals("3.ADD TO CART"))
  {
  oqt=r.getParameter("qtys");
  try
   {
String q="select trchge from chrges where country='"+coun+"'";
rs=st.executeQuery(q);
String q1="select proname,capacity,deschge,prodid from products where prodid='"+r.getParameter("pids")+"'";
rs1=st1.executeQuery(q1);
flag=1;
    }
 catch(Exception e){System.out.println(e);}
  } }
 if(r.getParameter("hidet").equals("true")){
 if(r.getParameter("submit").equals("4.ADD TO CART"))
 {
 oqt=r.getParameter("qtyt");
  try
   {
String q="select trchge from chrges where country='"+coun+"'";
System.out.println(q);
rs=st.executeQuery(q);
String q1="select proname,capacity,deschge,prodid from products where prodid='"+r.getParameter("pidt")+"'";
System.out.println(q1);
rs1=st1.executeQuery(q1);
  flag=1;
  }
 catch(Exception e){System.out.println(e);}
  }}
  if(flag==1)
  try
  {
 if(rs1.next())
        {
         pnm.addElement(rs1.getString(1));
         cap.addElement(Integer.toString(rs1.getInt(2)));
         pid.addElement(rs1.getString(4));
         double tprce;
         double ttprce=rs1.getDouble(3);
         int x=Integer.parseInt(oqt);
         tprce=(ttprce)*(double)x;
         String temp=Double.toString(tprce);
         if(rs.next())
         tch=rs.getDouble(1);
         else tch=0.0;
         prc.addElement(Double.toString(ttprce));
         System.out.println("t");
         System.out.println(temp);
         int l;
         amt.addElement(temp);
         tqt.addElement(oqt);
        }  }
    catch(Exception e){System.out.println(e+"1");}
      }
public double transcharge()
       {
        return tch;
        }
public String[] retpronames()
       {
       System.out.println(pnm.size());
       String s[]=new String[pnm.size()];
       pnm.copyInto(s);
       return s;
       }
public String[] retpids()
       {
       String s[]=new String[pid.size()];
       pid.copyInto(s);
       return s;
       }
public String[] retprices()
       {
       String s[]=new String[prc.size()];
       prc.copyInto(s);
       return s;
       }
public String[] retquantity()
       {
       String s[]=new String[tqt.size()];
       tqt.copyInto(s);
       return s;
       }
public String[] retcapacity()
       {
       String s[]=new String[cap.size()];
       cap.copyInto(s);
       return s;
       }
public String[] retamounts()
       {
       String s[]=new String[amt.size()];
       amt.copyInto(s);
       return s;
       }
  }

     
         
