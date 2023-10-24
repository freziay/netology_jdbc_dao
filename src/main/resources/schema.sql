create schema sqljoin;
create table sqljoin.orders(
id int  auto_increment primary key,
name varchar(255) not null,
surname varchar(255) not null,
age int not null,
phone_number int not null
);

insert into sqljoin.customers(name, surname, age, phone_number)
values ('Ira','Ivanova','25','1234567');
insert into sqljoin.customers(name, surname, age, phone_number)
values ('Oly','Petrova','28','7654321');
insert into sqljoin.customers(name, surname, age, phone_number)
values ('Alexey','Iva','30','11111111');
insert into sqljoin.customers(name, surname, age, phone_number)
values ('Koly','Viy','20','22222222');


create table sqljoin.orders(
id int  auto_increment primary key,
date date not null,
customer_id int not null ,
product_name varchar(100) not null,
int not null,
foreign key (customer_id) references sqljoin.customers(id));

insert into sqljoin.orders(date, customer_id, product_name,amount)
values (now(),'1','bananas','5000');
insert into sqljoin.orders(date, customer_id, product_name,amount)
values (now(),'2','pineapples','6000');
insert into sqljoin.orders(date, customer_id, product_name,amount)
values (now(),'3','peaches','7000');
insert into sqljoin.orders(date, customer_id, product_name,amount)
values (now(),'4','cucumbers','8000');

