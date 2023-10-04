create table emp(empid int ,name varchar(30));

use learningmysql;

insert into emp(empid, name) values(4 , 'ashish');

create table book(bookno int, bookname varchar(30), authorname varchar(30), cost int, category char(10));

insert into book(bookno,bookname,authorname,cost,category) values(103,'PL SQL-Ref','Scott Urman' ,750,'Database');

select * from book;
select * from book where cost >=500 and cost <=700;

select * from book where bookname like 'o%';
#4] find records whose cost is < avg cost
	select avg(cost) from book;
#4] create new table as copy of books
	create table book1 as(select * from book);

# create new table with database as category

#6] find record with max cost
select max(cost) from book;

#7] find record with min cost
select min(cost) from book;

#8] find name of the author who has  published more than one book

SET SQL_SAFE_UPDATES = 0;
update book set cost = cost+150 where bookname = 'Let us C';

select bookname from book where category = 'database';

select bookname,cost from book where category in ('Database' , 'System');

select * from book where cost < 500;

-- alter table
alter table book add publishedyear int;
update book set publishedyear = 2021 where bookno = 103;

alter table book add subscriber int after publishedyear;
update book set subscriber = 2000 where bookno= 104;
update book set bookno = 104 where bookname= 'PL SQL-Ref';

alter table book1 rename book11;

alter table book modify bookno int primary key;







