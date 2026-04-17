create database library_db;
use library_db;

create table books_info (
    book_id char(4) primary key,
    book_name varchar(30) not null,
    author varchar(25) not null,
    category varchar(20) check(category IN ('Fiction','Non-Fiction','Education','Science')),
    price int check(price > 0),
    publish_year int check(publish_year >= 2000),
    isbn bigint unique
);

insert into books_info values('B001','Book1','Author1','Fiction',500,2010,1111111111);
insert into books_info values('B002','Book2','Author2','Science',600,2011,1111111112);
insert into books_info values('B003','Book3','Author3','Education',700,2012,1111111113);
insert into books_info values('B004','Book4','Author4','Fiction',800,2013,1111111114);
insert into books_info values('B005','Book5','Author5','Science',900,2014,1111111115);
insert into books_info values('B006','Book6','Author6','Education',550,2015,1111111116);
insert into books_info values('B007','Book7','Author7','Fiction',650,2016,1111111117);
insert into books_info values('B008','Book8','Author8','Science',750,2017,1111111118);
insert into books_info values('B009','Book9','Author9','Education',850,2018,1111111119);
insert into books_info values('B010','Book10','Author10','Fiction',950,2019,1111111120);
insert into books_info values('B011','Book11','Author11','Science',500,2020,1111111121);
insert into books_info values('B012','Book12','Author12','Education',600,2021,1111111122);
insert into books_info values('B013','Book13','Author13','Fiction',700,2022,1111111123);
insert into books_info values('B014','Book14','Author14','Science',800,2023,1111111124);
insert into books_info values('B015','Book15','Author15','Education',900,2024,1111111125);

select * from books_info;

create table members_info (
    member_id char(4) primary key,
    member_name varchar(25) not null,
    phone bigint unique check(phone between 1000000000 and 9999999999),
    city varchar(20) default 'Mysore',
    join_date date not null,
    membership_type varchar(10) check(membership_type in ('Basic','Premium'))
);

insert into members_info values('M001','Amit',9876543210,'Mysore','2023-01-01','Basic');
insert into members_info values('M002','Ravi',9123456789,'Bangalore','2023-01-02','Premium');
insert into members_info values('M003','Sneha',9988776655,'Mysore','2023-01-03','Basic');
insert into members_info values('M004','Kiran',9871234560,'Mandya','2023-01-04','Premium');
insert into members_info values('M005','Pooja',9765432109,'Mysore','2023-01-05','Basic');
insert into members_info values('M006','Rahul',9345678901,'Bangalore','2023-01-06','Premium');
insert into members_info values('M007','Neha',9234567810,'Mysore','2023-01-07','Basic');
insert into members_info values('M008','Arjun',9123987654,'Mandya','2023-01-08','Premium');
insert into members_info values('M009','Divya',9012345678,'Mysore','2023-01-09','Basic');
insert into members_info values('M010','Vikram',9898765432,'Bangalore','2023-01-10','Premium');
insert into members_info values('M011','Anjali',9789654321,'Mysore','2023-01-11','Basic');
insert into members_info values('M012','Manoj',9678543210,'Mandya','2023-01-12','Premium');
insert into members_info values('M013','Kavya',9567432109,'Mysore','2023-01-13','Basic');
insert into members_info values('M014','Suresh',9456321098,'Bangalore','2023-01-14','Premium');
insert into members_info values('M015','Meena',9345210987,'Mysore','2023-01-15','Basic');

select * from members_info;

create table issue_info (
    issue_id int primary key,
    book_id char(4),
    member_id char(4),
    issue_date date not null,
    status varchar(10) default 'Issued',
    foreign key (book_id) references books_info(book_id),
    foreign key (member_id) references members_info(member_id)
);

insert into issue_info values(1,'B001','M001','2024-01-01','Issued');
insert into issue_info values(2,'B002','M002','2024-01-02','Issued');
insert into issue_info values(3,'B003','M003','2024-01-03','Issued');
insert into issue_info values(4,'B004','M004','2024-01-04','Issued');
insert into issue_info values(5,'B005','M005','2024-01-05','Issued');

select * from issue_info;

create table return_info (
    return_id int primary key,
    issue_id int,
    return_date date,
    fine int default 0 check(fine >= 0),
    foreign key (issue_id) references issue_info(issue_id)
);

insert into return_info values(1,1,'2024-01-10',0);
insert into return_info values(2,2,'2024-01-11',10);
insert into return_info values(3,3,'2024-01-12',0);
insert into return_info values(4,4,'2024-01-13',5);
insert into return_info values(5,5,'2024-01-14',0);

select * from return_info;
