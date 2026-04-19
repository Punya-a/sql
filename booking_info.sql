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

select * from movie where duration>150;
select * from movie where duration>180;
select * from movie where duration>160;
select * from movie where duration>170;
select * from movie where duration>165;

select * from movie where duration<180;
select * from movie where duration<150;
select * from movie where duration<165;
select * from movie where duration<140;
select * from movie where duration<145;

select * from movie where release_year>=2021;
select * from movie where release_year>=2022;
select * from movie where release_year>=2002;
select * from movie where release_year>=2023;
select * from movie where release_year>=2020;

select * from movie where rating<=4.3;
select * from movie where rating<=4;
select * from movie where rating<=9.6;
select * from movie where rating<=8.0;
select * from movie where rating<=7.2;

select * from movie where movie_id!=1;
select * from movie where movie_id!=6;
select * from movie where movie_id!=9;
select * from movie where movie_id!=14;
select * from movie where movie_id!=17;



select * from movie where genre="action" and language="tamil";
select * from movie where genre="thriller" and language="malayalam";
select * from movie where genre="drama" and language="kannada";
select * from movie where genre="action" or director="lokesh";
select * from movie where genre="action" or language="tamil";
select * from movie where genre="action" or director="lokesh";
select * from movie where genre="thriller" or language="malayalam";
select * from movie where genre="drama" or language="kannada";


select * from movie where not genre="action";
select * from movie where not title="rrr";
select * from movie where not language="hindi";
select * from movie where not director="rishab";
select * from movie where not rating=8.2;




select * from movie where not genre in ("action","drama");
select * from movie where not director in ("lokesh","rakesh");
select * from movie where not language in ("hindi","malayalam");
select * from movie where not language in ("kannada","english");
select * from movie where  language in ("kannada","hindi");
select * from movie where  title in ("kantara","jawan");


select * from movie where director is null;
select * from movie where language is null;
select * from movie where genre is null;
select * from movie where duration is null;
select * from movie where rating is null;

select * from movie where director is not null;
select * from movie where title is not null;
select * from movie where rating is not null;
select * from movie where release_year is not null;
select * from movie where genre is not null;


select * from movie where title like "p%";
select * from movie where title like "_a%";
select * from movie where title like "%a%";
select * from movie where title like "%a";
select * from movie where title like "%b";


select * from movie where title not like "p%";
select * from movie where title not like "%a";
select * from movie where title not like "%p%";
select * from movie where title not like "_a%";
select * from movie where title not like "%_a%";




select * from movie where duration between 150 and 180;
select * from movie where release_year between 2015 and 2022;
select * from movie where duration between 155 and 165;
select * from movie where movie_id between 5 and 10;
select * from movie where movie_id between 6 and 8;




select * from movie where release_year not between 2015 and 2022;
select * from movie where release_year not between 2022 and 2023;
select * from movie where duration not between 1600 and 180;
select * from movie where movie_id between 8 and 10;
select * from movie where movie_id between 3 and 6;






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