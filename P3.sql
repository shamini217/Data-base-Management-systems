create database P3;
use P3;
select *from tb1;
CREATE TABLE tb1 (
    RNO INT PRIMARY KEY,
    NAME VARCHAR(50),
    MARKS INT
);
INSERT INTO tb1 (RNO, NAME, MARKS) VALUES
(503, 'Suma', 40),
(504, 'Raju', 70),
(505, 'Ramu', 45),
(501, 'Abhi', 50),
(502, 'Ravi', 60);
CREATE TABLE tb2 (
    RNO INT PRIMARY KEY,
    FEE INT
);
INSERT INTO tb2 (RNO, FEE) VALUES
(501, 15000),
(502, 5000),
(503, 10000),
(504, 25000);
select *from tb1 join tb2 on tb1.rno=tb2.rno;
select * from tb1 left outer join tb2 on tb1.rno=tb2.rno;
select * from tb1 right outer join tb2 on tb1.rno=tb2.rno;
select *from tb1 natural join tb2;
select * from tb1,tb2;
select t1.rno, t2.name from tb1 t1,tb1 t2 where t1.rno=t2.rno;
select * from tb1,tb2 where tb1.rno=tb2.rno;
-- Sailors Table
CREATE TABLE Sailors (
  SID INT PRIMARY KEY,
  SNAME VARCHAR(20),
  AGE FLOAT,
  RATING INT
);

INSERT INTO Sailors (SID, SNAME, AGE, RATING) VALUES
(22, 'Dustin', 45, 7),
(29, 'Brutus', 33, 1),
(31, 'Lubber', 55.5, 8),
(32, 'Andy', 25.5, 8),
(64, 'Horatio', 35, 7),
(71, 'Zobra', 16, 10),
(74, 'Ravi', 40, 9),
(85, 'Art', 26.5, 3),
(95, 'Bob', 63.5, 3),
(58, 'Rusty', 35, 10);
select * from boats;
select * from reserves;
select s.sname from sailors s, reserves r,boats b where s.sid=r.sid and b.bid=r.bid and
b.bcolor='Red'
UNION
select s1.sname from sailors s1,reserves r1,boats b1 where s1.sid=r1.sid and r1.bid=b1.bid and
b1.bcolor='Green';
select s.sname from sailors s, reserves r,boats b where s.sid=r.sid and b.bid=r.bid and
b.bcolor='Red'
UNION all
select s1.sname from sailors s1,reserves r1,boats b1 where s1.sid=r1.sid and r1.bid=b1.bid and
b1.bcolor='Green';
select s.sname from sailors s, reserves r,boats b where s.sid=r.sid and b.bid=r.bid and
b.bcolor='Red'
INTERSECT
select s1.sname from sailors s1,reserves r1,boats b1 where s1.sid=r1.sid and r1.bid=b1.bid and
b1.bcolor='Green';
select s.sname from sailors s, reserves r,boats b where s.sid=r.sid and b.bid=r.bid and
b.bcolor='Red'
MINUS
select s1.sname from sailors s1,reserves r1,boats b1 where s1.sid=r1.sid and r1.bid=b1.bid and
b1.bcolor='Green';
select s.sname from sailors s where s.sid IN( select r.sid from reserves r where r.bid=103);
select s.sname from sailors s where s.sid NOT IN( select r.sid from reserves r where r.bid=103);
select s.sid from sailors s where s.rating>=all(select s1.rating from sailors s1);
select s.sid from sailors s where s.rating>ANY(select
s1.rating from sailors s1 where s1.sname='Andy');
select s.sname from sailors s where EXISTS(select * from reserves r where s.sid=r.sid and
r.bid=103);
select s.sname from sailors s where NOT EXISTS(select * from reserves r where s.sid=r.sid and
r.bid=103);

CREATE TABLE Source (
  ROLLNO INT PRIMARY KEY,
  NAME VARCHAR(20),
  MARKS INT
);

INSERT INTO Source (ROLLNO, NAME, MARKS) VALUES
(501, 'Jyothi', 90),
(502, 'Sai', 95),
(504, 'Yamuna', 70),
(505, 'Padma', 60),
(503, 'Ravi', 80);
create view my_view as select rollno, name from source;
select * from source;
insert into my_view values(506,'prathisha');
select * from my_view;
delete from my_view where rollno=506;
select * from my_view;
create or replace view my_view as select * from source;





