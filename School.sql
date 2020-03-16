



create table students (
id int not null PRIMARY KEY AUTO_INCREMENT,
name varchar (256) not null,
enrollment_date date not null
);

insert into students 
 values ( 1, "Georgi Georgiev", "2000-10-22");
 

 insert into  students (name,enrollment_date)
 values ("Stoyan Ivanov", "2010-11-18");
 
 insert into students (name,enrollment_date)
 values ( "Mariya Grozdanova", "2008-05-27");
 
  insert into students (name,enrollment_date)
 values ( "Stefaniya Petkova", "2007-01-12");




create table teachers (
	id int not null PRIMARY KEY ,
    name varchar(100) not null,
    email char (30) not null,
    salary double not null
);

 insert into teachers 
 values (1,"Peter Ivanov", "pivanov@gmail.com",1921.50);
 
  insert into teachers 
 values (2,"Georgi Stoimenov", "stoimenov@gmail.com",1787.25);
 
 insert into teachers 
 values (3,"Nataliya Yordanova", "nyyoo@abv.bg",1888.21);
 
 insert into teachers 
 values (4,"Simeon Prodanov", "sprod@yahoo.com",1341.60);


create table disciplines (
	id int not null PRIMARY KEY ,
    name varchar(100) not null
	);

insert into disciplines 
values(1, "Mathematics");

insert into disciplines 
values(2, "Geography");


insert into disciplines 
values(3, "Physics");

insert into disciplines
values(4, "Informatics");

create table adresses (
id int not null PRIMARY KEY ,
country char (30) not null,
city char (30) not null,
street varchar(100) not null,
number char (5) not null,
floor int not null,
apartment_no int not null
);


insert into adresses
values(1,"Bulgaria","Sofia","Vitosha","30A",3,10);

insert into adresses
values(2,"Bulgaria","Plovdiv","Maricha","9",4,10);

insert into adresses
values(3,"Bulgaria","Varna","Cherno more","54",2,5);



alter table students 
add adressid int;

alter table students
add constraint adressid foreign key (adressid) 
    references  adresses(id);
    

 update  students
 set  adressid = 1 where   id = 1;


alter table teachers 
add adress_id int;


alter table teachers
add constraint adress_id 
foreign key (adress_id)  references adresses(id);

update teachers
set     adress_id = 3 where   id = 1;