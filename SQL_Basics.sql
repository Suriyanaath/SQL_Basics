create database bank_details;
use bank_details;
create table employees(e_id int,
e_salary int check (e_salary>8000),
e_name varchar(20) not null,
branch_name varchar(20) not null,
branch_id varchar(10) primary key,
e_age int check(e_age>21));

insert into employees values(111,25000,"AjayKumar","Madurai","MDU54",28);
insert into employees values(112,13000,"Suriyanaath","chennai","CC021",32);
insert into employees values(113,15000,"Venkatesan","bangalore","BGL03",35);
insert into employees values(114,35000,"Sumathi","coimbatore","CBE04",42);
insert into employees values(116,35000,"Sanjai","coimbatore","CBE06",22);

select*from employees;

create table customer(customer_accNo int not null,
customer_pin int ,
customer_name varchar(20) not null,
balance_amount int,
acc_type varchar(20),
customer_panNo varchar(20) primary key,
cus_contactNo varchar(10),
cus_address varchar(50) default "not mention",
branch_id varchar(20));
select*from customer;

insert into customer values(2020101,3577,"Rashik",25680,"Savings_account","Rash123","9845200114","Rasipuram","RSP01");
insert into customer values(2020110,1599,"Suriya",52354,"Current_account","MGS23","9087654329","Madurai","MDU14");
insert into customer values(2022120,7899,"Kaviya",150000,"Savings_account","kvy183","9842005874","Erode","ED15");
insert into customer values(2018119,4711,"Nisha",50000,"Savings_account","Nishy147","9788647815","Salem","SLM21");
insert into customer values(2016011,3569,"Navaneedhan",44587,"Current_account","NVN146","7540085474","Attur","ATT02");


select*from customer;

use bank;

select customer.cus_accNo, customer.cus_pin, customer.cus_name, customer.balance_amount, customer.acc_type, customer.cus_panNo, 
customer.cus_contactNo, customer.cus_address, employees.e_id, employees.e_salary, employees.e_name, employees.branch_name, employees.e_age
from customer
inner join employees
on employees.branch_id=customer.branch_id;
select*from customer order by branch_id;
