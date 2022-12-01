create database AIMS;

create table customers(customerId int not null identity(1,1) primary key,
						name varchar(255) not null,
						phone varchar(15) NOT null,
						email varchar(25) not null,
						country varchar(50) not null,
                        city varchar(50) not null,
						address varchar(255) not null);

create table orders( orderId varchar(4) not null primary key,
						isRushOrder boolean,
						status varchar NOT null,
						dateCreate date not null,
						constraint FK_OR foreign key customerId references customers(customerId);

create table media(id varchar(4) not null primary key,
                    orderId int NOT null;
					tite varchar(50) not null,
					category varchar(25) not null,
					price float not null,
					quantity INT not null,
                    isSupportRush boolean,
					constraint FK_MDA foreign key orderId references orders(orderId);

create table CDs(id varchar(4) not null primary key,
                 recordLabel varchar(50) not null,
                 artist varchar(50) not null,
                 releaseDate date not null,
                 musicType varchar(25) not null,
				constraint FK_CD foreign key (book_id) references medias(id));

create table DVDs(id varchar(4) not null primary key,
                 disType varchar(25) not null,
                 director varchar(50) not null,
                  runtime FLOAT NOT null,
                 releaseDate date not null,
                 subtitle varchar(255) not null,
				constraint FK_DVD foreign key (id) references medias(id));

create table Books(id varchar(4) not null primary key,
                 author varchar(25) not null,
                 bookCategory varchar(50) not null,
                 language varchar(25) NOT null,
                 coverType varchar(25) not null,
                 numberOfPage int not null,
                 publishDate date not null,
				constraint FK_BK foreign key (id) references medias(id));

create table invoices(orderId int not null PRIMARY KEY,
					discoundCode varchar(25) not null,
                    totalAmount double NOT null,
					constraint FK_Invoice foreign key (orderId) references orders(orderId));


create table delivery(orderId varchar(4) not null primary key,
					name varchar(255) not null,
					phone varchar(15) NOT null,
					email varchar(25) not null,
					country varchar(50) not null,
                    city varchar(50) not null,
					address varchar(255) not null),
                    shipInstruction varchar(500),
                    deliverySchedule date,
					constraint FK_DL foreign key (orderId) references invoices(orderId));

create table payemtTransaction(orderId varchar(4) not null primary key,
							content varchar(500),
							createAt date not null,
							method varchar(25) not null,
							constraint FK_PT foreign key (orderId) references invoices(orderId));
                    
create table card(orderId varchar(4) not null primary key,
							owner varchar(25),
							cardNumber varchar(50) not null,
							dateExpired varchar(25) not null,
							constraint FK_PT foreign key (orderId) references paymentTransaction(orderId));

