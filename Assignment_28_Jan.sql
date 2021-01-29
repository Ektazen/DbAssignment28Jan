use WFA3otNET

create table Product(
productId  int not null primary key identity(1,1),
description varchar(30) not null unique,
setqty int not null default 1 check(setqty in( 1,5,10)),
rate decimal(10,2) check(rate>=51 and rate<=5000)
)


--Q1)⦁	Insert 20 records in the above Product table
insert into product values('Earphone',5,500.20)

insert into product values('Notebook',10,400.80)
insert into product values('Pen',1,60.20)
insert into product values('Eraser',10,70.20)
insert into product values('Clothes',1,1500.20)
insert into product values('Clock',5,2500.20)
insert into product values('Colors',10,1000.20)
insert into product values('Shampoo',1,500.20)
insert into product values('Biscuits',10,2000.20)
insert into product values('Rice',5,2500.20)
insert into product values('Dal',5,3500.20)
insert into product values('Hat',10,2500.20)
insert into product values('Mob',10,4500.20)
insert into product values('Wallet',1,1500.20)
insert into product values('Bag',10,2500.20)
insert into product values('Bottle', DEFAULT,3500.20)
insert into product values('Box',5,2500.20)
insert into product values('Dryer',10,1500.20)
insert into product values('Apple cider',10,2500.20)
insert into product values('Lights', DEFAULT,3500.20)

select * from product

--Q2)⦁	Update all the rates with 10% rate hike.

update product set rate=rate+(0.1*rate)

--Q3)⦁	Delete last record by providing the ProductID.
delete from product where productId=20;

--Q4)⦁	Alter the above table and add the following column
--Attribute	Data Type	Size	Allow Null	Condition
--MarginCode	Char	1	Yes	A or B or Null

alter table product
add  MarginCode char(1) check(MarginCode in ('A','B','null'));
select * from product

--Q5)⦁	Update few records to set MarginCode to A and some records MarginCode to B

update product set margincode='A' where productId>=10;
update product set margincode='B' where productId<10;

--Q6)⦁	Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1.

update product set setqty=10 where Margincode='A' and setqty=1;





