<html>
<body background="images/center.jpg" alink=blue vlink=blue>
<jsp:useBean id="dr" scope="session" class="mytags.drocls"/>
<jsp:useBean id="dlr" scope="session" class="mytags.checkdcode"/>
<jsp:useBean id="cd" scope="session" class="mytags.drdetails"/>
<jsp:setProperty name="cd" property="*"/>
<%
 String rdcode=dlr.retdcode();
 String[] prns=dr.retpronames();
 String[] prcs=dr.retprices();
 String[] tcap=dr.retcapacity();
 String[] tamt=dr.retamounts();
 String[] tqty=dr.retquantity();
 String[] pid=dr.retpids();
 double f,fd,fd1,fd2;
 double total=0.0;
 Double d,d2;
 int m=0,flag=0,t=0; 
 String s;
int l=prns.length;
 String[] fpid=new String[l];
  String[] fqty=new String[l];
  String[] famt=new String[l]; 
 if(l!=0)
 {
 for(int i=0;i<l;i++)
 {
 d=new Double(tamt[i]);
 m=m+Integer.parseInt(tqty[i]);
 total=total+d.doubleValue();
 } 
  double divpart=m/10;
  int qpart=m%10;
  if(qpart>0)divpart=divpart+1.0; 
  if(total==0.0)
  {out.println("You have not specified any Order.");
   out.println("No order Registered");}
  else
  {
  if(divpart!=0)
  total=total+(dr.transcharge()*divpart);
  else
  total=total+(dr.transcharge()*1.0); 
   int len=pid.length; int tp=0;double dv=0.0;
for(int j=0;j<len;j++)
{
    String st=pid[j]; int flag1=0;int temp=0;
 for(int k=j+1;k<len;k++)
    {
if((st.equals(pid[k]))&&(pid[k]!="x"))
 { 
 flag1=1;
 if(temp==0)
  {
  tp=Integer.parseInt(tqty[j])+Integer.parseInt(tqty[k]);
  Double sd=new Double(tamt[j]);Double d1=new Double(tamt[k]);
  dv =sd.doubleValue()+d1.doubleValue();
  }
 else
   {
    tp=tp+Integer.parseInt(tqty[k]); 
    Double ttd=new Double(tamt[k]);
    dv=dv+ttd.doubleValue();
   }
   temp=temp+1;
  pid[k]="x";
 }
}
 if(flag1!=0)
   {
     fpid[t]=st;
     fqty[t]=Integer.toString(tp);
     famt[t]=Double.toString(dv);
}
 else
   {
     fpid[t]=st;
    fqty[t]=tqty[j];
    famt[t]=tamt[j];
  }
t=t+1;
}
cd.establishconnection();
cd.placeorder(request,rdcode,fpid,famt,fqty,len,total); 
out.println("Please take your DD on <b>BroadWalk</b>");
out.println("<br>(In case your Mode of Payment is DD)");
out.println("<br>Send DD/VPP to address<br><b>");
out.println("<font color=brown>Naveentiles Pvt.Ltd<br><b>");
out.println("Rajastan<br>");
out.println("Jaipur<br>");
out.println("Pinkcity<br></b></font>");
}}
 else
 {
 out.println("<br><B>You have not placed any order.<br>No Order regisiterd</B>");
 }
%>

