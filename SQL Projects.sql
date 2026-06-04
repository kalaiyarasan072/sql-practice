#table creation

create table may2 (id number(2),name varchar2(30),gender char(1));

select *from may2;

insert into may2 values(12,'dp','k')
insert into may2 values(13,'dd','s')
insert into may2 values(10,'pg','r')
insert into may2 values(15,'vg','e')
insert into may2 values(22,'ov','w')
insert into may2 values(11,'sw','u')
insert into may2 values(30,'pj','p')

select * from work_details;

#table creation

create table mar9 (id number(3),name varchar2(40),gender char(1));

select * from mar9;

insert into mar9 values(10,'aa','m');
#march10
create table mar11(id number(2),name varchar2(20),gender char(1),logindate date,logout timestamp);

select * from mar11;

#insert

insert into mar11 values(10,'aaa','f',sysdate,sysdate);

select * from mar11;

#bulk insert

insert all
into mar11 values(11,'bbb','m',to_date('09/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(13,'ccc','m',to_date('08/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(15,'dd','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
into mar11 values(16,'ee','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
select * from dual;

alter
alter table mar11 add mobileno number(10);

select * from mar11;

insert into mar11 values(20,'deepi','m',sysdate,sysdate,827095887)

alter table mar11 modify id number(3);

desc mar11;

alter table mar11 rename column id to s_id;

alter table mar11 drop column mobileno;

update mar11 set name='goki' where s_id=20;

delete from mar11 where s_id=10;

create table mar12(S_ID number(3),S_NAME varchar2(20) not null,S_GENDER char(1),S_ADD varchar2(20),S_EMAIL varchar2(20) not null,
S_PHNO number(10),
constraint pkid primary key(S_ID),
constraint uqph unique(S_PHNO),
constraint chemail check(S_Email like'%@%.%'));

insert into mar12 values(12,'aaa','m','chennai','kalaiaras@gmail.com',8270955887)
insert into mar12 values(13,'aaa','m','chennai','kalaiaras@gmail.com',8270956587)
insert into mar12 values(14,'aaa','m','chennai','kalaiaras@gmail.com',8270956587)

select * from mar12;

create table DETAILS(D_ID number,D_NAME varchar2(20),D_PHNO number(10),S_ID number,
constraint pkid1 primary key(D_ID),
constraint fkid foreign key (S_ID) references mar12(S_ID));

insert into DETAILS values(14,'ddd',7098456201,12)

select * from DETAILS

insert all
 into mar12 values(16,'aaa','f','chennai','kalaiaras@gmail.com',8234755887)
 into mar12 values(15,'ggg','m','chennai','kalaiaras@gmail.com',8280955887)
 into mar12 values(20,'aaa','f','chennai','kalaiaras@gmail.com',8290955887)
 into mar12 values(18,'ddd','m','chennai','kalaiaras@gmail.com',8200955887)
 into mar12 values(22,'eee','f','chennai','kalaiaras@gmail.com',8210955887)
 select * from dual;


#operator

select * from mar12 where S_gender ='f';

select * from mar12 where S_id!=18;

select * from mar12 where s_id<>17 and S_gender = 'm';

select * from mar12 where s_id<>17 or S_gender ='m';

select * from mar12 where s_id between 21 and 25;

select * from mar12 where S_name like 'd%'

create table mar13(S_ID number,S_name varchar2(10),S_place varchar2(20));
create table march13(S_ID number,S_Salary number(10),S_domain varchar2(20)); 

insert all
 into mar13 values(2,'kkk','trichy');
 into mar13 values(3,'kgg','chennai');
 into mar13 values(4,'jjj','tirunelveli');
 into mar13 values(7,'ooo','ooty');
 into mar13 values(1,'ttt','madurai');
select * from dual; 


insert into march13 values(8,'30000','non IT');

select * from mar13;

select * from march13;

select * from work_details;

#table creation

create table mar9 (id number(3),name varchar2(40),gender char(1));

select * from mar9;

insert into mar9 values(10,'aa','m');
#march10
create table mar11(id number(2),name varchar2(20),gender char(1),logindate date,logout timestamp);

select * from mar11;

#insert

insert into mar11 values(10,'aaa','f',sysdate,sysdate);

select * from mar11;

#bulk insert

insert all
into mar11 values(11,'bbb','m',to_date('09/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(13,'ccc','m',to_date('08/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(15,'dd','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
into mar11 values(16,'ee','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
select * from dual;

alter
alter table mar11 add mobileno number(10);

select * from mar11;

insert into mar11 values(20,'deepi','m',sysdate,sysdate,827095887)

alter table mar11 modify id number(3);

desc mar11;

alter table mar11 rename column id to s_id;

alter table mar11 drop column mobileno;

update mar11 set name='goki' where s_id=20;

delete from mar11 where s_id=10;

create table mar12(S_ID number(3),S_NAME varchar2(20) not null,S_GENDER char(1),S_ADD varchar2(20),S_EMAIL varchar2(20) not null,
S_PHNO number(10),
constraint pkid primary key(S_ID),
constraint uqph unique(S_PHNO),
constraint chemail check(S_Email like'%@%.%'));

insert into mar12 values(12,'aaa','m','chennai','kalaiaras@gmail.com',8270955887)
insert into mar12 values(13,'aaa','m','chennai','kalaiaras@gmail.com',8270956587)
insert into mar12 values(13,'aaa','m','chennai','kalaiarasgmail.com',8270956587)

select * from mar12;

create table DETAILS(D_ID number,D_NAME varchar2(20),D_PHNO number(10),S_ID number,
constraint pkid1 primary key(D_ID),
constraint fkid foreign key (S_ID) references mar12(S_ID));

insert into DETAILS values(14,'ddd',7098456201,12)

select * from DETAILS

insert all
 into mar12 values(16,'aaa','f','chennai','kalaiaras@gmail.com',8234755887)
 into mar12 values(15,'ggg','m','chennai','kalaiaras@gmail.com',8280955887)
 into mar12 values(20,'aaa','f','chennai','kalaiaras@gmail.com',8290955887)
 into mar12 values(18,'ddd','m','chennai','kalaiaras@gmail.com',8200955887)
 into mar12 values(22,'eee','f','chennai','kalaiaras@gmail.com',8210955887)
 select * from dual;


#operator

select * from mar12 where S_gender ='f';

select * from mar12 where S_id!=18;

select * from mar12 where s_id<>17 and S_gender = 'm';

select * from mar12 where s_id<>17 or S_gender ='m';

select * from mar12 where s_id between 21 and 25;

select * from mar12 where S_name like 'd%'

create table mar13(S_ID number,S_name varchar2(10),S_place varchar2(20));
create table march13(S_ID number,S_Salary number(10),S_domain varchar2(20)); 

insert all
 into mar13 values(2,'kkk','trichy')
 into mar13 values(3,'kgg','chennai')
 into mar13 values(4,'jjj','tirunelveli')
 into mar13 values(7,'ooo','ooty')
 into mar13 values(1,'ttt','madurai')
select * from dual; 


insert into march13 values(8,'30000','non IT');
insert into march13 values(4,'50000','IT');

select * from mar13 
union

select * from march13 

create table mar14(S_ID number,S_name varchar2(10));
create table march14(S_ID number,S_place varchar2(20));

insert all
 into mar14 values(2,'kkk')
 into mar14 values(3,'kgg')
 into mar14 values(4,'jjj')
 into mar14 values(7,'ooo')
 into mar14 values(1,'ttt')
select * from dual;

insert all
 into march14 values(2,'chennai')
 into march14 values(3,'kovai')
 into march14 values(4,'trichy')
 into march14 values(8,'ooty')
 into march14 values(6,'madurai')
select * from dual;

select * from mar14
minus

select * from march14

create synonym synonymname for tablename;

create synonym mar15s for mar15;

select * from mar15s;

truncate-truncate table tablename;

truncate table mar15;

select * from march14;

desc march14;

dql-data query language(select, from,where,groupby,having,distinct,orderby,limit)

select * from march14;

create table march15(id number(2),name varchar2(30),dob date,address varchar2(30));

insert all
into march15 values(13,'maya',sysdate,'chennai')
into march15 values(15,'nap',to_date('01/01/2000','dd-mm-yyyy'),'pune')
into march15 values(17,'pragi',to_date('01/01/2000','dd-mm-yyyy'),'chennai')
select * from dual;

select * from march15 where id>=14;

select address, count(id) as id from march15 group by address;

select distinct address from march15;

insert all
into march15 values(16,'oviya',sysdate,'mumbai')
into march15 values(17,'kalai',to_date('01/01/2000','dd-mm-yyyy'),'delhi')
into march15 values(7,'dharshini',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into march15 values(47,'swetha',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into march15 values(47,'goki',to_date('01/01/2000','dd-mm-yyyy'),'pune')
select * from dual;

select * from march15;

select address,count(id) as id
from march15
group by address
having count(id)>1;

select * from march15 order by id;

select * from march15 order by name desc;

select * from march15 order by name limit 4 offset 8;

select * from march15 order by id desc fetch first 2 rows only;

select * from work_details;

#table creation

create table mar9 (id number(3),name varchar2(40),gender char(1));

select * from mar9;

insert into mar9 values(10,'aa','m');
#march10
create table mar11(id number(2),name varchar2(20),gender char(1),logindate date,logout timestamp);

select * from mar11;

#insert

insert into mar11 values(10,'aaa','f',sysdate,sysdate);

select * from mar11;

#bulk insert

insert all
into mar11 values(11,'bbb','m',to_date('09/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(13,'ccc','m',to_date('08/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(15,'dd','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
into mar11 values(16,'ee','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
select * from dual;

alter
alter table mar11 add mobileno number(10);

select * from mar11;

insert into mar11 values(20,'deepi','m',sysdate,sysdate,827095887)

alter table mar11 modify id number(3);

desc mar11;

alter table mar11 rename column id to s_id;

alter table mar11 drop column mobileno;

update mar11 set name='goki' where s_id=20;

delete from mar11 where s_id=10;

create table mar12(S_ID number(3),S_NAME varchar2(20) not null,S_GENDER char(1),S_ADD varchar2(20),S_EMAIL varchar2(20) not null,
S_PHNO number(10),
constraint pkid primary key(S_ID),
constraint uqph unique(S_PHNO),
constraint chemail check(S_Email like'%@%.%'));

insert into mar12 values(12,'aaa','m','chennai','kalaiaras@gmail.com',8270955887)
insert into mar12 values(13,'aaa','m','chennai','kalaiaras@gmail.com',8270956587)
insert into mar12 values(13,'aaa','m','chennai','kalaiarasgmail.com',8270956587)

select * from mar12;

create table DETAILS(D_ID number,D_NAME varchar2(20),D_PHNO number(10),S_ID number,
constraint pkid1 primary key(D_ID),
constraint fkid foreign key (S_ID) references mar12(S_ID));

insert into DETAILS values(14,'ddd',7098456201,12)

select * from DETAILS

insert all
 into mar12 values(16,'aaa','f','chennai','kalaiaras@gmail.com',8234755887)
 into mar12 values(15,'ggg','m','chennai','kalaiaras@gmail.com',8280955887)
 into mar12 values(20,'aaa','f','chennai','kalaiaras@gmail.com',8290955887)
 into mar12 values(18,'ddd','m','chennai','kalaiaras@gmail.com',8200955887)
 into mar12 values(22,'eee','f','chennai','kalaiaras@gmail.com',8210955887)
 select * from dual;


#operator

select * from mar12 where S_gender ='f';

select * from mar12 where S_id!=18;

select * from mar12 where s_id<>17 and S_gender = 'm';

select * from mar12 where s_id<>17 or S_gender ='m';

select * from mar12 where s_id between 21 and 25;

select * from mar12 where S_name like 'd%'

create table mar13(S_ID number,S_name varchar2(10),S_place varchar2(20));
create table march13(S_ID number,S_Salary number(10),S_domain varchar2(20)); 

insert all
 into mar13 values(2,'kkk','trichy')
 into mar13 values(3,'kgg','chennai')
 into mar13 values(4,'jjj','tirunelveli')
 into mar13 values(7,'ooo','ooty')
 into mar13 values(1,'ttt','madurai')
select * from dual; 


insert into march13 values(8,'30000','non IT');
insert into march13 values(4,'50000','IT');

select * from mar13 
union

select * from march13 

create table mar14(S_ID number,S_name varchar2(10));
create table march14(S_ID number,S_place varchar2(20));

insert all
 into mar14 values(2,'kkk')
 into mar14 values(3,'kgg')
 into mar14 values(4,'jjj')
 into mar14 values(7,'ooo')
 into mar14 values(1,'ttt')
select * from dual;

insert all
 into march14 values(2,'chennai')
 into march14 values(3,'kovai')
 into march14 values(4,'trichy')
 into march14 values(8,'ooty')
 into march14 values(6,'madurai')
select * from dual;

select * from mar14
minus

select * from march14

create synonym synonymname for tablename;

create synonym mar15s for mar15;

select * from mar15s;

truncate-truncate table tablename;

truncate table mar15;

select * from march14;

desc march14;

dql-data query language(select, from,where,groupby,having,distinct,orderby,limit)

select * from march14;

create table march15(id number(2),name varchar2(30),dob date,address varchar2(30));

insert all
into march15 values(13,'maya',sysdate,'chennai')
into march15 values(15,'nap',to_date('01/01/2000','dd-mm-yyyy'),'pune')
into march15 values(17,'pragi',to_date('01/01/2000','dd-mm-yyyy'),'chennai')
select * from dual;

select * from march15 where id>=14;

select address, count(id) as id from march15 group by address;

select distinct address from march15;

insert all
into march15 values(16,'oviya',sysdate,'mumbai')
into march15 values(17,'kalai',to_date('01/01/2000','dd-mm-yyyy'),'delhi')
into march15 values(7,'dharshini',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into march15 values(47,'swetha',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into march15 values(47,'goki',to_date('01/01/2000','dd-mm-yyyy'),'pune')
select * from dual;

select * from march15;

select address,count(id) as id
from march15
group by address
having count(id)>1;

select * from march15 order by id;

select * from march15 order by name desc;

select * from march15 order by name limit 4 offset 8;

select * from march15 order by id desc fetch first 2 rows only;

create table march19(id number,coursename varchar2(10),name varchar2(20),address varchar2(20));

create table mar19(id number,coursename varchar2(10),name varchar2(20),dob date,address varchar2(20));

select * from march19;
 
select * from mar19;

select a.coursename,b.name,b.address
from march19 a
join mar19 b
using (id);

insert all
into march19 values(22,'Java','oviya','mumbai')
into march19 values(13,'python','kalai','delhi')
into march19 values(15,'tesing','dharshini','bangalore')
into march19 values(20,'SQL','swetha','bangalore')
into march19 values(22,'C++','goki','pune')
select * from dual;

select a.coursename, b.address,b.dob
from march19 a,mar19 b
where a.id=b.id

insert all
into mar19 values(15,'Java','nap',to_date('01/01/2000','dd-mm-yyyy'),'mumbai')
into mar19 values(17,'python','pragi',to_date('01/01/2000','dd-mm-yyyy'),'chennai')
into mar19 values(13,'C++','goki',to_date('01/01/2000','dd-mm-yyyy'),'delhi')
into mar19 values(20,'SQL','oviya',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into mar19 values(22,'testing','deepi',to_date('01/01/2000','dd-mm-yyyy'),'pune')
select * from dual;

select a.coursename,b.address,b.dob
from march19 a,mar19 b
where a.id=b.id(+);

select a.coursename,b.address,b.dob
from march19 a,mar19 b
where a.id(+)=b.id;

select coursename,id
from march19
where id =(select max(id) from march19);

select max(id) from march19


select 5,6 ,(select 5+6 from dual) from dual;

select * from work_details;

#table creation

create table mar9 (id number(3),name varchar2(40),gender char(1));

select * from mar9;

insert into mar9 values(10,'aa','m');
#march10
create table mar11(id number(2),name varchar2(20),gender char(1),logindate date,logout timestamp);

select * from mar11;

#insert

insert into mar11 values(10,'aaa','f',sysdate,sysdate);

select * from mar11;

#bulk insert

insert all
into mar11 values(11,'bbb','m',to_date('09/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(13,'ccc','m',to_date('08/03/2026','dd-mm-yyyy'),sysdate)
into mar11 values(15,'dd','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
into mar11 values(16,'ee','f',to_date('09/04/2026','dd-mm-yyyy'),sysdate)
select * from dual;

alter
alter table mar11 add mobileno number(10);

select * from mar11;

insert into mar11 values(20,'deepi','m',sysdate,sysdate,827095887)

alter table mar11 modify id number(3);

desc mar11;

alter table mar11 rename column id to s_id;

alter table mar11 drop column mobileno;

update mar11 set name='goki' where s_id=20;

delete from mar11 where s_id=10;

create table mar12(S_ID number(3),S_NAME varchar2(20) not null,S_GENDER char(1),S_ADD varchar2(20),S_EMAIL varchar2(20) not null,
S_PHNO number(10),
constraint pkid primary key(S_ID),
constraint uqph unique(S_PHNO),
constraint chemail check(S_Email like'%@%.%'));

insert into mar12 values(12,'aaa','m','chennai','kalaiaras@gmail.com',8270955887)
insert into mar12 values(13,'aaa','m','chennai','kalaiaras@gmail.com',8270956587)
insert into mar12 values(13,'aaa','m','chennai','kalaiarasgmail.com',8270956587)

select * from mar12;

create table DETAILS(D_ID number,D_NAME varchar2(20),D_PHNO number(10),S_ID number,
constraint pkid1 primary key(D_ID),
constraint fkid foreign key (S_ID) references mar12(S_ID));

insert into DETAILS values(14,'ddd',7098456201,12)

select * from DETAILS

insert all
 into mar12 values(16,'aaa','f','chennai','kalaiaras@gmail.com',8234755887)
 into mar12 values(15,'ggg','m','chennai','kalaiaras@gmail.com',8280955887)
 into mar12 values(20,'aaa','f','chennai','kalaiaras@gmail.com',8290955887)
 into mar12 values(18,'ddd','m','chennai','kalaiaras@gmail.com',8200955887)
 into mar12 values(22,'eee','f','chennai','kalaiaras@gmail.com',8210955887)
 select * from dual;


#operator

select * from mar12 where S_gender ='f';

select * from mar12 where S_id!=18;

select * from mar12 where s_id<>17 and S_gender = 'm';

select * from mar12 where s_id<>17 or S_gender ='m';

select * from mar12 where s_id between 21 and 25;

select * from mar12 where S_name like 'd%'

create table mar13(S_ID number,S_name varchar2(10),S_place varchar2(20));
create table march13(S_ID number,S_Salary number(10),S_domain varchar2(20)); 

insert all
 into mar13 values(2,'kkk','trichy')
 into mar13 values(3,'kgg','chennai')
 into mar13 values(4,'jjj','tirunelveli')
 into mar13 values(7,'ooo','ooty')
 into mar13 values(1,'ttt','madurai')
select * from dual; 


insert into march13 values(8,'30000','non IT');
insert into march13 values(4,'50000','IT');

select * from mar13 
union

select * from march13 

create table mar14(S_ID number,S_name varchar2(10));
create table march14(S_ID number,S_place varchar2(20));

insert all
 into mar14 values(2,'kkk')
 into mar14 values(3,'kgg')
 into mar14 values(4,'jjj')
 into mar14 values(7,'ooo')
 into mar14 values(1,'ttt')
select * from dual;

insert all
 into march14 values(2,'chennai')
 into march14 values(3,'kovai')
 into march14 values(4,'trichy')
 into march14 values(8,'ooty')
 into march14 values(6,'madurai')
select * from dual;

select * from mar14
minus

select * from march14

create synonym synonymname for tablename;

create synonym mar15s for mar15;

select * from mar15s;

truncate-truncate table tablename;

truncate table mar15;

select * from march14;

desc march14;

dql-data query language(select, from,where,groupby,having,distinct,orderby,limit)

select * from march14;

create table march15(id number(2),name varchar2(30),dob date,address varchar2(30));

insert all
into march15 values(13,'maya',sysdate,'chennai')
into march15 values(15,'nap',to_date('01/01/2000','dd-mm-yyyy'),'pune')
into march15 values(17,'pragi',to_date('01/01/2000','dd-mm-yyyy'),'chennai')
select * from dual;

select * from march15 where id>=14;

select address, count(id) as id from march15 group by address;

select distinct address from march15;

insert all
into march15 values(16,'oviya',sysdate,'mumbai')
into march15 values(17,'kalai',to_date('01/01/2000','dd-mm-yyyy'),'delhi')
into march15 values(7,'dharshini',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into march15 values(47,'swetha',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into march15 values(47,'goki',to_date('01/01/2000','dd-mm-yyyy'),'pune')
select * from dual;

select * from march15;

select address,count(id) as id
from march15
group by address
having count(id)>1;

select * from march15 order by id;

select * from march15 order by name desc;

select * from march15 order by name limit 4 offset 8;

select * from march15 order by id desc fetch first 2 rows only;


create table march19(id number,coursename varchar2(10),name varchar2(20),address varchar2(20));

create table mar19(id number,coursename varchar2(10),name varchar2(20),dob date,address varchar2(20));

select * from march19;
 
select * from mar19;

select a.coursename,b.name,b.address
from march19 a
join mar19 b
using (id);

insert all
into march19 values(22,'Java','oviya','mumbai')
into march19 values(13,'python','kalai','delhi')
into march19 values(15,'tesing','dharshini','bangalore')
into march19 values(20,'SQL','swetha','bangalore')
into march19 values(22,'C++','goki','pune')
select * from dual;

select a.coursename, b.address,b.dob
from march19 a,mar19 b
where a.id=b.id

insert all
into mar19 values(15,'Java','nap',to_date('01/01/2000','dd-mm-yyyy'),'mumbai')
into mar19 values(17,'python','pragi',to_date('01/01/2000','dd-mm-yyyy'),'chennai')
into mar19 values(13,'C++','goki',to_date('01/01/2000','dd-mm-yyyy'),'delhi')
into mar19 values(20,'SQL','oviya',to_date('01/01/2000','dd-mm-yyyy'),'bangalore')
into mar19 values(22,'testing','deepi',to_date('01/01/2000','dd-mm-yyyy'),'pune')
select * from dual;

select a.coursename,b.address,b.dob
from march19 a,mar19 b
where a.id=b.id(+);

select a.coursename,b.address,b.dob
from march19 a,mar19 b
where a.id(+)=b.id;

select coursename,id
from march19
where id =(select max(id) from march19);

select max(id) from march19


select 5,6 ,(select 5+6 from dual) from dual;

create table work12(e_id number(2),e_name varchar2(20),salary number(6));

create table work11(id number(2),name varchar2(20),salary number(6),months varchar2(10));

select round(2.7) from dual;

select trunc(2.9) from dual;

insert all
insert into work12 values(8,'pragi','30000');
insert into work12 values(4,'oviya','50000');
insert into work12 values(10,'goki','30000');
insert into work12 values(15,'deepi','50000');
insert into work12 values(20,'dharsi','50000');
select * from dual;

select mod(10,2) from dual;

select sign(-6.3-6) from dual;

select abs(-6) from dual;

select abs(5) from dual;

insert all
insert into work11 values(8,'pragi',to_date('01/01/2000','dd-mm-yyyy'),'30000');
insert into work11 values(4,'oviya',to_date('01/01/2000','dd-mm-yyyy'),'50000');
insert into work11 values(10,'goki',to_date('01/01/2000','dd-mm-yyyy'),'30000');
insert into work11 values(15,'deepi',to_date('01/01/2000','dd-mm-yyyy'),'50000');
insert into work11 values(20,'dharsi',to_date('01/01/2000','dd-mm-yyyy'),'50000');
select * from dual;

select months_between(sysdate,'01/01/2000') from dual;

select add_months(sysdate,'friday') from dual;

select add_months(sysdate,4)from dual;

select months_between(sysdate,'12/12/2000') from dual;

select next_day(sysdate,'friday') from dual;

select last_day(sysdate) from dual;

select * from work11;

select * from work12;

select e_name,salary,

rank() over(order by salary desc) rankbasedsalary
from work12;

select e_name,salary,

dense_rank() over(order by salary desc) rankbasedsalary
from work12;

select e_name,salary,

row_number() over(order by salary desc) rankbasedsalary
from work12;

select e_name,salary,

lead(salary,4) over(order by salary desc) rankbasedsalary
from work12;

select e_name,salary,

lag(salary,2) over(order by salary desc) rankbasedsalary
from work12;

select e_name,salary,job_role,

rank() over(partition by job_role  order by salary desc) rankbasedsalary
from work12;


select * from work12;
update work12 set job_role='ceo' where e_id=16;


update work12 set job_role='ceo' where salary=100000;

create table DEPT(Deptno int primary key,D_name varchar2(30),loc varchar2(10));

create table EMP(Empno int primary key,E_name varchar2(20),Job varchar2(20),Mgr int, Hiregate date,Sal decimal(10,2),Comm decimal(10,2),Deptno int,Foreign Key (Deptno) references DEPT(Deptno));

insert all
insert into DEPT values(10,'Accounting','New york');
insert into DEPT values(20,'Research','Dallas');
insert into DEPT values(30,'Sales','Chicago');
select * from dual;

insert all
insert into EMP values(7369,'smith','clerk',7902,to_date('2000-12-01','yyyy-mm-dd'),800,null,20);
insert into EMP values(7499,'Alan','salesman',7698,to_date('2000-12-01','yyyy-mm-dd'),1600,300,30);
select * from dual;

select * from DEPT;

select * from EMP;

select E.Empno,E.E_name,E.Job,E.Deptno,D.D_name,D.loc from EMP E join DEPT D on E.Deptno = D.Deptno;


create table UNITS (allocation_unit_id BIGINT, type int,type_desc varchar(50),container_id bigint,data_space_id int,total_pages int,used_pages int,data_pages int);