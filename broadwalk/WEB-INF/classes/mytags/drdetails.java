package mytags;
import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
public class drdetails
  {
   Connection con;
   Statement st,st1;
   ResultSet rs,rs1,rs2,rs3,rs4;
   String fname,lname,phn,fax,eml,adr,sta,coun,zip,dst,q,q1,q2;
   String mop,need,comments,ddn,bnm,rdcode,custid,tq,cid,ordno;
   public void setNeed(String need)
    {
    this.need=need;
    }
    public void setMop(String mop)
    {
    this.mop=mop;
    }
    public void setDdn(String ddn)
    {
    this.ddn=ddn;
    }
    public void setBnm(String bnm)
    {
    this.bnm=bnm;
    }
    public void setComments(String comments)
    {
    this.comments=comments;
    }
   public void establishconnection()
   {
    System.out.println("hello");
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");


    st=con.createStatement();
    st1=con.createStatement();
    }
    catch(Exception e)
    {
    System.out.println(e.getMessage());
    }
    }
   public void placeorder(HttpServletRequest r,String rdcode,String[] fpid,String[] famt,String[] fqty,int len,double total)
     {
    this.rdcode=rdcode;
    try{
   String oq="select nvl(max(to_number(dordid,'9,9999'))+1,1) from depays";
   String oq1=" where rdid='"+rdcode+"'";
   String oo=oq+oq1;
   rs3=st.executeQuery(oo);
   rs3.next();
   ordno=rs3.getString(1);
   String iq="insert into depays values('"+rdcode+"','"+ordno+"','"+mop+"',"+(float)total+",'"+r.getParameter("need")+"','"+r.getParameter("comments")+"',sysdate)";
   System.out.println(iq);
   Statement ps1=con.createStatement();
   ps1.executeUpdate(iq);
   for(int i=0;i<len;i++)
    {
    if(fpid[i]!="x")
    {
    double mamt=(new Double(famt[i])).doubleValue();
    String iqr="insert into dlorder values('"+rdcode+"','"+ordno+"','"+fpid[i]+"','"+fqty[i]+"',"+mamt+")";
    System.out.println(iqr);
    Statement ips=con.createStatement();
    ips.executeUpdate(iqr);
    System.out.println(iqr);
    }
    }
    if(r.getParameter("mop").equals("dd"))
     {
     System.out.println("hai");
     String pad="insert into deddinfo values('"+rdcode+"','"+ordno+"','"+r.getParameter("bnm")+"','"+r.getParameter("ddn")+"')";
     System.out.println(pad);
     Statement ids=con.createStatement();
     ids.executeUpdate(pad);
    }
    String itq="select nvl(max(to_number(trid,'9,9999'))+1,1) from dltrans"; 
    System.out.println("itq");
    Statement istr=con.createStatement();
    ResultSet trs=istr.executeQuery(itq);
    trs.next();
    if(r.getParameter("need").equals("immediate"))
    tq="insert into dltrans values('"+trs.getString(1)+"','"+rdcode+"','"+ordno+"',sysdate+8)";
    else
    if(r.getParameter("need").equals("urgent"))
    tq="insert into dltrans values('"+trs.getString(1)+"','"+rdcode+"','"+ordno+"',sysdate+4)";
    else
    tq="insert into dltrans values('"+trs.getString(1)+"','"+rdcode+"','"+ordno+"',sysdate+12)";
    Statement sq=con.createStatement();
    sq.executeUpdate(tq);
    System.out.println("hai");
   }
  catch(Exception e)
   {
   System.out.println(e.getMessage()+"2");
   }
}   }

