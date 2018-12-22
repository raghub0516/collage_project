drop table dcustomers;
create table dcustomers
  (dcid varchar(15),fname varchar(15),lname varchar(15),phone varchar(15),fax varchar(15),
 email varchar(25),address varchar(65),state varchar(15),country varchar(15),zip varchar(10),
 district varchar(15),
 primary key(dcid));


drop table rdealers;
create table rdealers
  (rdcode varchar(15),pwd varchar(10),fname varchar(15),lname varchar(15),frmname varchar(25),
phone varchar(15),fax varchar(15),email varchar(25),country varchar(15), state varchar(15),
 district varchar(15),zip varchar(10),dtoreg date,adr varchar(65),
  primary key(rdcode));


drop table icustomers;
create table icustomers
 (icid varchar(15),rdcode varchar(15),fname varchar(15),lname varchar(15),phone varchar(15),
 fax varchar(15),email varchar(25),address varchar(65),state varchar(15),country varchar(15),
 zip varchar(10),district varchar(15),
 primary key(icid,rdcode),
 foreign key(rdcode) references rdealers(rdcode));

drop table dealers ;
create table dealers 
 (dcode varchar(15),fname varchar(15),lname varchar(15),firm varchar(25),phone varchar(15),
 fax varchar(15),email varchar(25),address varchar(65),district varchar(15),
state varchar(15),country varchar(15), zip varchar(10),dtaply date,status varchar(1),
 primary key(dcode));

drop table products;
create table products
 (prodid varchar(10),proname varchar(20),capacity number(5),eleinput varchar(15),
  warrenty varchar(10),cmt  varchar(25),cschge number(12,3),
 deschge number(12,3),
 primary key(prodid));

drop table exper;
create table exper
  (dcode varchar(15),prodeal varchar(25),anntrv number(12,3),me number(5,2),
  primary key(dcode),
  foreign key(dcode) references dealers(dcode));

drop table diorder;
create table diorder
 (dordid varchar(10),dcid varchar(15),prodid varchar(10),quantity number(5),didamt number(12,3),
  primary key(dordid,dcid,prodid),
  foreign key(dcid) references dcustomers(dcid),
  foreign key(prodid) references products(prodid));


drop table dpays;
create table dpays
 (dordid varchar(10),dcustid varchar(15),mdp varchar(10),amount number(12,3),
   need varchar(10),cmt varchar(25),dor date,
   primary key(dordid,dcustid),
    foreign key(dcustid) references dcustomers(dcid));



drop table idrorders;
create table idrorders
   (iordid varchar(10),icid varchar(15),rdid varchar(15),prodid     varchar(10),
   quantity number(5),idamt number(12,3),
   primary key(iordid,icid,rdid,prodid),
   foreign key(icid,rdid) references icustomers(icid,rdcode),
     foreign key(prodid) references products(prodid));


drop table idpays;
create table idpays
 (iordid varchar(10),icid varchar(15),rdid varchar(15), mdp varchar(10),
 amount number(12,3),need varchar(10),cmt varchar(25),dor date,
 primary key(iordid,icid,rdid),
 foreign key(icid,rdid) references icustomers(icid,rdcode));


drop table dlorder ;
create table dlorder
(rdid varchar(15),dordid varchar(10),prodid varchar(10),quantity number(5),idamt number(12,3),
primary key(rdid,dordid,prodid),
foreign key(rdid) references rdealers(rdcode),
foreign key(prodid) references products(prodid));

drop table depays;
create table depays
 (rdid varchar(15),dordid varchar(10),mdp varchar(10),amount number(12,3),
 need varchar(10),cmt varchar(25),dor date,
 primary key(rdid,dordid),
 foreign key(rdid) references rdealers(rdcode));

drop table ddinfo;
create table ddinfo
(iorid varchar(10),icid varchar(15),rdid varchar(15),ddnumber varchar(15),bankname varchar(25),
 primary key(iorid,icid,rdid),
foreign key(iorid,icid,rdid) references idpays(iordid,icid,rdid));

drop table dddinfo;
create table dddinfo
 (dorid varchar(10),dcustid varchar(15),ddno varchar(15),bankname varchar(25),
 primary key(dorid,dcustid),
  foreign key(dorid,dcustid) references dpays(dordid,dcustid));

drop table deddinfo;
create table deddinfo
 (rdid varchar(15),rordid varchar(10),bankname varchar(25),ddnumber varchar(15),
 primary key(rdid,rordid),
 foreign key(rdid,rordid) references depays(rdid,dordid));

drop table deddinfo;
create table deddinfo
 (mailno number(5),dom date,maild varchar(35),cmt varchar(300),uname varchar(15),
 primary key(mailno));

drop table dtrans;
create table dtrans
  (trid  number(10),dordid varchar(10),dcid varchar(15),dot date,
  primary key(trid),
  foreign key(dordid,dcid) references dpays(dordid,dcustid));

drop table idtrans;
create table idtrans
   (trid  number(10),idordid varchar(10),rdid varchar(15),idcid varchar(15),idate date,
  primary key(trid),
 foreign key(idordid,idcid,rdid) references  idpays(iordid,icid,rdid));

drop table dltrans;
create table dltrans
  (trid  number(10),rdid varchar(15),ordid varchar(10),dot date,
  primary key(trid),
  foreign key(rdid,ordid) references depays(rdid,dordid));

drop table admin;
create table admin
       (userid varchar2(15),password varchar2(15));
drop table chrges;
create table chrges
       (country varchar(15),trchge number(12,3),
       primary key(country));
insert into chrges values('India',0.00);
drop table rexper;
create table rexper
      (rdcode varchar(15),prodeal varchar(25),anntrv number(12,3),
       me number(5,2),primary key(rdcode),
       foreign key(rdcode) references rdealers(rdcode));

insert into admin values('admin','admin');
commit;

  