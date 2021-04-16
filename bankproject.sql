create database `bank`;
use bank;
create table if not exists account1
(
account_number char(5) not null primary key,
branch_name varchar(10),
balance double
);

 insert into account1 values('A-101', 'abc', 500);
insert into account1 values('A-102', 'bcd', 400);
insert into account1 values('A-201', 'cde', 900);
insert into account1 values('A-215', 'def', 700);
insert into account1 values('A-217', 'efg', 750);
insert into account1 values('A-222', 'fgh', 700);
insert into account1 values('A-305', 'ghi', 350);


create table if not exists branch  
(
 branch_name varchar(10) not null primary key,
 branch_city varchar(10), 
 assets double
 );
 
 insert into branch values('bcd', 'jedah', 7100000);
insert into branch values('abc', 'dammam', 9000000);
insert into branch values('def', 'makkah', 400000);
insert into branch values('fgh', 'Riyadh', 3700000);
insert into branch values('ghi', 'abha', 1700000);
insert into branch values('cde', 'khobar', 300000);
insert into branch values('efg', 'madinah', 2100000);


 CREATE TABLE IF NOT EXISTS customer
 (
customer_name varchar(20) not null primary key,
customer_street varchar(20),
customer_city varchar(10)
);

insert into customer values('Ahmad', 'Spring', 'jedah');
insert into customer values('Brooks', 'Senator', 'dammam');
insert into customer values('Curry', 'North', 'makkah');
insert into customer values('Glenn', 'Sand Hill', 'Riyadh');
insert into customer values('Green', 'Walnut', 'abha');
insert into customer values('Hayes', 'Main', 'jedah');
insert into customer values('Johnson', 'Alma', 'abha');
insert into customer values('Jones', 'Main', 'madinah');
insert into customer values('Lindsay', 'Park', 'Riyadh');
insert into customer values('Smith', 'North', 'Riyadh');
insert into customer values('Turner', 'Putnam', 'haiel');
insert into customer values('Williams', 'Nassau', 'Riyadh');

CREATE TABLE IF NOT EXISTS employee
(
employee_name varchar(20) not null, 
branch_name varchar(10) not null, 
salary double,
 primary key(employee_name,branch_name)
 );
 use bank;
 
insert into employee values('Adams', 'abc', 1500);
insert into employee values('Brown', 'bcd', 1300);
insert into employee values('Gopal', 'cde', 5300);
insert into employee values('Johnson', 'def', 1500);
insert into employee values('Loreena', 'fgh', 1300);
insert into employee values('Peterson', 'ghi', 2500);
insert into employee values('Rao', 'abc', 1500);
insert into employee values('Sato', 'efg', 1600);


select * from employee;
select * from customer;
select * from branch;
select * from account1;
select account_number from account1 where balance < 500;
select branch_name from branch where assets between 1000000 and 4000000;
select customer_name from customer where customer_city='dammam';

select avg(salary) as avg_salary from employee ;

use bank;
select customer.customer_name,customer.customer_city, branch.branch_name, branch.branch_city
from customer join branch
on customer.customer_city = branch_city;
use bank;
select employee.employee_name,employee.salary,employee.branch_name, branch.branch_name, branch.branch_city
from employee join branch
on employee.branch_name = branch_name;




 





