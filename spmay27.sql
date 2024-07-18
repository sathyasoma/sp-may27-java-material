create database spmay27;

use spmay27;

create table employee(empid int(10),empname varchar(20),empsal decimal(6,3));

describe employee;

alter table employee add column empadd varchar(20);
alter table employee rename column empsal to salary;
alter table employee modify column empname varchar(40);
alter table employee drop column salary;


rename table employee to emp;
desc emp;

drop table emp;


insert into employee values(123,'sathya',90.78);
select empid from employee;
select empid,empname from employee;
select empid,empname,empsal from employee;
select * from employee;


insert into employee values
  (100,'deva',789.90),
  (968,'bahu',784.90),
  (125,'balla',236.90),
  (746,'katta',745.90),
  (358,'mahi',965.90);
  
update employee set empname='soma' where empid=125;

delete from employee where empid=746;

truncate table employee;


set autocommit=0;
insert into employee values(91,'kalki',60.78);
insert into employee values(92,'shmabala',190.78);
insert into employee values(93,'complex',790.78);

commit;

select * from employee;

delete from employee where empid=93;
rollback;

truncate table employee;


create role may27;

grant update,delete,select on spmay27.* to  "may27";

create user 'barath' identified by 'barath123' default role 'may27';

revoke update,delete,select on spmay27.* from  "may27";

update employee set empname="devasena" where empid=100;

/*--------------------constraints-------------------------------*/

create table  emp(empid int not null,empname varchar(20), empsal int);

insert into emp values(123,'sathya',890);
insert into emp values(0,'soma',890);
insert into emp values(null,'prakash',890);

select * from emp;

create table  emp1(empid int unique,empname varchar(20) not null, empsal int check(empsal<30000));

insert into emp1 values(234,'prakash',1890);
insert into emp1 values(235,'soma',4890);
insert into emp1(empid,empsal) values(238,15890);

select * from emp1;

create table emp2(empid int primary key,empname varchar(20) not null, empsal int default(80000));

insert into emp2(empid,empname) values(129,'sathya');
insert into emp2(empid,empname) values(125,'soma');
insert into emp2(empid,empname) values(159,'prakash');
insert into emp2 values(159,'prakash',78900);
select * from emp2;

