create database booking_info;
use booking_info;

create table movie (
    movie_id int primary key,
    title varchar(50) not null,
    genre varchar(30),
    duration int check (duration > 0),
    language varchar(20),
    release_year int check (release_year > 2000),
    rating decimal(2,1) check (rating between 0 and 10),
    director varchar(50)
);

insert into movie values(1,'leo','action',150,'tamil',2023,8.2,'lokesh');
insert into movie values(2,'kgf','action',155,'kannada',2022,9.0,'prashanth');
insert into movie values(3,'rrr','drama',180,'telugu',2022,8.8,'rajamouli');
insert into movie values(4,'jawan','action',160,'hindi',2023,7.9,'atlee');
insert into movie values(5,'kantara','thriller',145,'kannada',2022,9.1,'rishab');
insert into movie values(6,'vikram','action',165,'tamil',2022,8.5,'lokesh');
insert into movie values(7,'pushpa','action',170,'telugu',2021,8.0,'sukumar');
insert into movie values(8,'pathaan','action',150,'hindi',2023,7.5,'siddharth');
insert into movie values(9,'drishyam','thriller',140,'malayalam',2021,9.2,'jeethu');
insert into movie values(10,'master','action',155,'tamil',2021,7.8,'lokesh');
insert into movie values(11,'salaar','action',170,'telugu',2023,8.3,'prashanth');
insert into movie values(12,'dangal','drama',160,'hindi',2016,9.3,'nitesh');
insert into movie values(13,'bahubali','epic',180,'telugu',2015,9.0,'rajamouli');
insert into movie values(15,'krrish','sci-fi',155,'hindi',2006,7.2,'rakesh');

select * from movie;

create table ticket_booking (
    booking_id int primary key,
    movie_id int,
    booking_date date default (current_date),
    ticket_count int check (ticket_count > 0),
    foreign key (movie_id) references movie(movie_id)
);
desc ticket_booking;

insert into ticket_booking values(1,1,current_date,3);
insert into ticket_booking values(2,2,current_date,2);
insert into ticket_booking values(3,3,current_date,4);
insert into ticket_booking values(4,4,current_date,1);
insert into ticket_booking values(5,5,current_date,5);

select * from ticket_booking;