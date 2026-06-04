#windows function
1.number function

1.round()

select round(2.7) from dual;

2.trunc()

select trunc(2.9) from dual;

3.mod()
select mod(10,2) from dual;

4.sign()
select sign(-6.3-6) from dual;

5.abs()
select abs(-6) from dual;

select abs(5) from dual;


#date function
1.months_between
select months_between(sysdate,'12/12/2000') from dual;


2.add_months

select add_months(sysdate,4) from dual;

3.next_day

select next_day(sysdate,'friday')from dual;

4.last_day
select last_day(sysdate)from dual;




#analytical function

1.rank()

select * from dec10;

create table work_details (e_id number(2),e_name varchar2(20),e_salary number(6));

insert all
into work_details values(10,'aa',30000)
into work_details values(11,'bb',30000)
into work_details values(12,'c',50000)
into work_details values(13,'dd',90000)
into work_details values(14,'e',20000)
into work_details values(15,'f',1000)
into work_details values(16,'g',100000)

select * from dual;

select * from work_details;

select e_name,e_salary,

rank() over(order by e_salary desc) rankbasedsalary
from work_details;


2.dense_rank()

select e_name,e_salary,

dense_rank() over(order by e_salary desc) rankbasedsalary
from work_details;


3.row_number()
select e_name,e_salary,

row_number() over(order by e_salary desc) rankbasedsalary
from work_details;

4.lead()
select e_name,e_salary,

lead(e_salary,4) over(order by e_salary desc) rankbasedsalary
from work_details;


5.lag()
select e_name,e_salary,

lag(e_salary,2) over(order by e_salary desc) rankbasedsalary
from work_details;

6.partition

select e_name,e_salary,job_role,

rank() over(partition by job_role  order by e_salary desc) rankbasedsalary
from work_details;


select * from work_details;
update work_details set job_role='ceo' where e_id=16;


update work_details set job_role='ceo' where e_salary=100000;