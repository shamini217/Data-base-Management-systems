Create database P2;
USE P2;
CREATE TABLE Students (rollno varchar(30), name varchar(30));
insert into Students values('24B11CS234','Bala');
insert into Students values('24B11CS381','Kiran');
select * from Students;
select name from Students;
select * from Students where rollno='24B11CS234'
SET SQL_SAFE_UPDATES = 0;
delete from students where rollno='24B11CS381';
update students set name='Bala Raju' where rollno='24B11CS381';
create table company (company_name varchar(30), amount int);
insert into company values ('wipro','5000'),
						   ('ibm','8000'),
                           ('dell','9000'),
                           ('wipro','2000'),
                           ('dell','10000');
Select AVG (amount) from company;
Select SUM(amount) from company;
Select Max(amount) from company;
Select Min(amount) from company;
Select Count(*) from company;
select company_name, sum(amount) from company group by company_name;
select company_name, min(amount) from company group by company_name;
select company_name, count(*) from company group by company_name;
select company_name ,count(*) from company group by company_name having count(*)>1;
select company_name, sum(amount) from company group by company_name having sum(amount)>10000;