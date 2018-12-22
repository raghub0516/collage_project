package mytags;
import java.io.*;
import java.sql.*;
import javax.servlet.http.*;
public class cudetails
  {
   Connection con;
   Statement st,st1;
   ResultSet rs,rs1,rs2,rs3,rs4;
   String fname,lname,phn,fax,eml,adr,sta,coun,zip,dst,q,q1,q2;
   String mop,need,comments,ddn,bnm,rdcode,custid,tq,cid,ordno,frm,ned,addr;

   public void setCountry(String coun)
   {
   this.coun=coun;
   }
   public void setSta(String sta)
   {
   this.sta=sta;
   }
   public void setDst(String dst)
   {
   this.dst=dst;
   }
   public void setZip(String zip)
   {
   this.zip=zip;
   }
   public void setEml(String eml)
   {
   this.eml=eml;
   }
   public void setAdr(String adr)
   {
   this.adr=adr;
   }
   public void setFax(String fax)
   {
   this.fax=fax;
   }
   public void setPhn(String phn)
   {
   this.phn=phn;
   }
   public void setLname(String lname)
   {
   this.lname=lname;
   }
   public void setFname(String fname)
    {
    this.fname=fname;
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
   public void setNed(String ned)
   {
   this.ned=ned;   
   }
   public void setComments(String comments)
   {
   this.comments=comments;
   }
   public String retaddr()
   {
   return addr;
   }
   public String retfrm()
   {
   return frm;
   }
   

   public int submitorder()
   {
System.out.println("from sbmitorder()====custdetails");
    
int flag=0;
    try
    {
    Class.forName("oracle.jdbc.driver.OracleDriver");
  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","scott","tiger");

System.out.println("afterconnect----------custdeta");
    st=con.createStatement();
    st1=con.createStatement();
   String q="select rdcode,adr,frmname from rdealers where country='"+coun+"' and district='";   
String q1=dst+"' and state='"+sta+"'";
   String q2=q+q1;
System.out.println("from submitorder()----------"+q2);
   rs=st.executeQuery(q2);
   if(rs.next())
   {
   flag=1;
   rdcode=rs.getString(1);
   addr=rs.getString(2);
   frm=rs.getString(3);
System.out.println("from sbmitorder()====if rdcode  "+ rdcode); 
}
System.out.println("from sbmitorder()====try custdetails");

	}
    catch(Exception e)
    {System.out.println(e.getMessage());System.out.println("from exception "); }
   if(flag==0){return 0;}
   else{ return 1;}
  }

 public void isubmitorder()
  {
   try{
   String qr="select nvl(max(to_number(icid,'9,9999'))+1,1) from icustomers "; 
   String qr1="where rdcode='"+rdcode+"'";
   String qr2=qr+qr1;
   System.out.println(qr2);
   rs1=st.executeQuery(qr2);
   rs1.next();
   custid=rs1.getString(1);
   String pq="insert into icustomers values(?,?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement ps=con.prepareStatement(pq);
   ps.setString(1,custid);
   ps.setString(2,rdcode);
   ps.setString(3,fname);
   ps.setString(4,lname);
   ps.setString(5,phn);
   ps.setString(6,fax);
   ps.setString(7,eml);
   ps.setString(8,adr);
   ps.setString(9,sta);
   ps.setString(10,coun);
   ps.setString(11,zip);
   ps.setString(12,dst);
   ps.executeUpdate();
    }
    catch(Exception e)
   {
   System.out.println(e.getMessage()+"error     1");
   }
    }
 

public void insidpays(HttpServletRequest r,String[] fpid,String[]fqty,String[] famt,double total,int len)
 {
 try{
   String oq="select nvl(max(to_number(iordid,'9,9999'))+1,1) from idpays";
   String oq1=" where icid='"+custid+"' and rdid='"+rdcode+"'";
   String oo=oq+oq1;
System.out.println(oo);
   rs3=st.executeQuery(oo);
   rs3.next();
   ordno=rs3.getString(1);
   String iq="insert into idpays values('"+ordno+"','"+custid+"','"+rdcode+"','"+mop+"',"+(float)total+",'"+r.getParameter("ned")+"','"+r.getParameter("comments")+"',sysdate)";
   System.out.println("insert  1 "+iq);
   Statement ps1=con.createStatement();
   ps1.executeUpdate(iq);
   for(int i=0;i<len;i++)
    {
    if(fpid[i]!="x")
    {
    double mamt=(new Double(famt[i])).doubleValue();
    String iqr="insert into idrorders values('"+ordno+"','"+custid+"','"+rdcode+"','"+fpid[i]+"','"+fqty[i]+"',"+mamt+")";
    System.out.println(iqr);
    Statement ips=con.createStatement();
    ips.executeUpdate(iqr);
    System.out.println("insert  2 "+iqr);
    }
    }
    if(r.getParameter("mop").equals("dd"))
     {
     String pad="insert into ddinfo values('"+ordno+"','"+custid+"','"+rdcode+"','"+r.getParameter("ddn")+"','"+r.getParameter("bnm")+"')";
     System.out.println(pad);
     Statement ids=con.createStatement();
     ids.executeUpdate(pad);
    }
    String itq="select nvl(max(to_number(trid,'9,9999'))+1,1) from idtrans"; 
    Statement istr=con.createStatement();
    ResultSet trs=istr.executeQuery(itq);
    trs.next();
    if(r.getParameter("ned").equals("immediate"))
    tq="insert into idtrans values('"+trs.getString(1)+"','"+ordno+"','"+rdcode+"','"+custid+"',sysdate+8)";
    else
    if(r.getParameter("ned").equals("urgent")){
int n=Integer.parseInt(trs.getString(1));    
tq="insert into idtrans values("+n+",'"+ordno+"','"+rdcode+"','"+custid+"',sysdate+4)";
    }else{
    tq="insert into idtrans values('"+trs.getString(1)+"','"+ordno+"','"+rdcode+"','"+custid+"',sysdate+12)";
    System.out.println(tq);
    Statement sq=con.createStatement();
    sq.executeUpdate(tq);
}    
System.out.println("hai");
   }
  catch(Exception e)
   {
   System.out.println(e.getMessage()+"error         2");
   }
}






public void dsubmitorder()
{

try{
String dqr="select nvl(max(to_number(dcid,'9,9999'))+1,1) from dcustomers";
Statement dcs=con.createStatement();
rs=dcs.executeQuery(dqr);
rs.next();
 cid=rs.getString(1);
   String dpq="insert into dcustomers values(?,?,?,?,?,?,?,?,?,?,?)";
   PreparedStatement dps=con.prepareStatement(dpq);
   dps.setString(1,cid);
   dps.setString(2,fname);
   dps.setString(3,lname);
   dps.setString(4,phn);
   dps.setString(5,fax);
   dps.setString(6,eml);
   dps.setString(7,adr);
   dps.setString(8,sta);
   dps.setString(9,coun);
   dps.setString(10,zip);
   dps.setString(11,dst);
   dps.executeUpdate();
}
catch(Exception e){System.out.println("from excep ===dsubmit"+e.getMessage());}
}




public void dsidpays(HttpServletRequest r,String[] fpid,String[] fqty,String[] famt,double total,int len)
   {
   try
   {
   String doq="select nvl(max(to_number(dordid,'9,9999'))+1,1) from dpays";
   String doq1=" where dcustid='"+cid+"'";
   String doo=doq+doq1;
   rs3=st.executeQuery(doo);
   rs3.next();
   String dordno=rs3.getString(1);
   String iq="insert into dpays values('"+dordno+"','"+cid+"','"+mop+"',"+(float)total+",'"+r.getParameter("ned")+"','"+r.getParameter("comments")+"',sysdate)";
   System.out.println(iq);
   Statement ps1=con.createStatement();
   ps1.executeUpdate(iq);
   for(int j=0;j<len;j++)
    {
    if(fpid[j]!="x")
    {
    double dmamt=(new Double(famt[j])).doubleValue();
    String diqr="insert into diorder values('"+dordno+"','"+cid+"','"+fpid[j]+"','"+fqty[j]+"',"+dmamt+")";
    System.out.println(diqr);
System.out.println(")))))))");
    Statement dips=con.createStatement();
    dips.executeUpdate(diqr);
System.out.println(")))))))");
    }
    }
System.out.println(r.getParameter("mop"));
    if(r.getParameter("mop").equals("dd"))
     {

     String dpad="insert into dddinfo values('"+dordno+"','"+cid+"','"+r.getParameter("ddn")+"','"+r.getParameter("bnm")+"')";
     System.out.println(dpad);
     Statement dids=con.createStatement();
     dids.executeUpdate(dpad);
    }
    String dtq="select nvl(max(to_number(trid,'9,9999'))+1,1) from dtrans"; 
    Statement dstr=con.createStatement();
    ResultSet trs=dstr.executeQuery(dtq);
    trs.next();
    if(r.getParameter("ned").equals("immediate"))
    tq="insert into dtrans values('"+trs.getString(1)+"','"+dordno+"','"+cid+"',sysdate+8)";
    else
    if(r.getParameter("ned").equals("urgent"))
    tq="insert into dtrans values('"+trs.getString(1)+"','"+dordno+"','"+cid+"',sysdate+4)";
    else
    tq="insert into dtrans values('"+trs.getString(1)+"','"+dordno+"','"+cid+"',sysdate+12)";
    System.out.println(tq);
    Statement sq=con.createStatement();
    sq.executeUpdate(tq);
}
catch(Exception e)
{System.out.println(e.getMessage()+"3");
}
}
}
