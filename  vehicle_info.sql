create database vehicle_info;
use vehicle_info;

create table vehicle (
    vehicle_id int primary key,
    owner_name varchar(50) not null,
    vehicle_number varchar(20) unique not null,
    brand varchar(50),
    model varchar(50),
    fuel_type varchar(20) check (fuel_type in ('petrol','diesel')),
    purchase_year int check (purchase_year > 2000),
    city varchar(30));
    
insert into vehicle values(1,'ravi','ka01ab1234','toyota','innova','petrol',2018,'bangalore');
insert into vehicle values(2,'anu','ka02cd5678','honda','city','diesel',2020,'mysore');
insert into vehicle values(3,'kiran','ka03ef9012','hyundai','creta','petrol',2021,'chennai');
insert into vehicle values(4,'neha','ka04gh3456','maruti','swift','petrol',2019,'hyderabad');
insert into vehicle values(5,'arjun','ka05ij7890','mahindra','xuv500','diesel',2017,'pune');
insert into vehicle values(6,'sita','ka06kl1122','tata','nexon','petrol',2022,'delhi');
insert into vehicle values(7,'vijay','ka07mn3344','ford','ecosport','diesel',2016,'mumbai');
insert into vehicle values(8,'pooja','ka08op5566','kia','seltos','petrol',2023,'kolkata');
insert into vehicle values(9,'rahul','ka09qr7788','skoda','rapid','diesel',2015,'jaipur');
insert into vehicle values(10,'divya','ka10st9900','volkswagen','polo','petrol',2018,'goa');
insert into vehicle values(11,'manoj','ka11uv1111','nissan','magnite','petrol',2021,'lucknow');
insert into vehicle values(12,'deepa','ka12wx2222','renault','kwid','petrol',2020,'indore');
insert into vehicle values(13,'rohit','ka13yz3333','chevrolet','beat','diesel',2016,'bhopal');
insert into vehicle values(14,'anita','ka14aa4444','datsun','redi-go','petrol',2019,'surat');
insert into vehicle values(15,'sanjay','ka15bb5555','jeep','compass','diesel',2022,'patna');

select * from vehicle;
desc vehicle;

create table fuel_usage (
    fuel_id int primary key,
    vehicle_id int,
    fuel_date date default (current_date),
    liters decimal(5,2) check (liters > 0),
    foreign key (vehicle_id) references vehicle(vehicle_id)
);


insert into fuel_usage values(1,1,current_date,5.5);
insert into fuel_usage values(2,2,current_date,3.0);
insert into fuel_usage values(3,3,current_date,6.2);
insert into fuel_usage values(4,4,current_date,4.5);
insert into fuel_usage values(5,5,current_date,5.8);

select * from fuel_usage;

create table Showroom (
    showroom_id int primary key,
    showroom_name varchar(50) not null,
    location varchar(50),
    owner_name varchar(50),
    contact_no varchar(15),
    established_year int,
    rating decimal(2,1)
);

desc Showroom;

insert into Showroom values(1, 'City Motors', 'Bangalore', 'Ramesh', '9876543210', 2005, 4.5);
insert into Showroom values(2, 'Auto World', 'Mysore', 'Suresh', '9123456780', 2010, 4.2);
insert into Showroom values(3, 'Speed Wheels', 'Hubli', 'Mahesh', '9988776655', 2012, 4.3);
insert into Showroom values(4, 'Prime Autos', 'Mangalore', 'Anil', '9012345678', 2008, 4.1);
insert into Showroom values(5, 'Super Bikes', 'Tumkur', 'Kiran', '9090909090', 2015, 4.6);
insert into Showroom values(6, 'Elite Motors', 'Belgaum', 'Ravi', '9871234567', 2007, 4.0);
insert into Showroom values(7, 'Fast Track', 'Davangere', 'Arun', '9988112233', 2011, 4.4);
insert into Showroom values(8, 'Urban Rides', 'Shimoga', 'Vijay', '9001122334', 2013, 4.3);
insert into Showroom values(9, 'Royal Wheels', 'Udupi', 'Ajay', '9112233445', 2016, 4.7);
insert into Showroom values(10, 'Metro Bikes', 'Bangalore', 'Deepak', '9223344556', 2014, 4.2);
insert into Showroom values(11, 'Highway Motors', 'Hassan', 'Manoj', '9334455667', 2009, 4.1);
insert into Showroom values(12, 'Dream Rides', 'Chitradurga', 'Naveen', '9445566778', 2017, 4.5);
insert into Showroom values(13, 'Zoom Autos', 'Raichur', 'Prakash', '9556677889', 2018, 4.0);
insert into Showroom values(14, 'Star Motors', 'Bidar', 'Sunil', '9667788990', 2006, 3.9);
insert into Showroom values(15, 'NextGen Bikes', 'Kolar', 'Harish', '9778899001', 2019, 4.6);

select * from Showroom;

create table Bike (
    bike_id int primary key,
    bike_name varchar(50) not null,
    brand varchar(50),
    price decimal(10,2),
    showroom_id int,
    foreign key  (showroom_id) references Showroom(showroom_id)
);

desc Bike;

insert into Bike values(101, 'R15', 'Yamaha', 180000, 1);
insert into Bike values(102, 'Classic 350', 'Royal Enfield', 200000, 5);
insert into Bike values(103, 'Apache RTR', 'TVS', 150000, 3);
insert into Bike values(104, 'Pulsar NS200', 'Bajaj', 160000, 7);
insert into Bike values(105, 'Duke 200', 'KTM', 210000, 9);

select * from Bike;