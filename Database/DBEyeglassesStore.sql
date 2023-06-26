
/********* CREATE DATABASE *********/
CREATE DATABASE eyeglassstore
go
use eyeglassesstore
go

create table [Account](
	[id] int not null identity(1,1) primary key,
	[username] varchar(32) ,
	[password] varchar(32) ,
	[email] varchar(150),
	[role] int
);

create table [User](
	[user_id] int not null  primary key,	
	[fullname] nvarchar(255) ,
	[address] nvarchar(255),
	[phone_number] varchar(20),
	[country] nvarchar(255),
	[DOB] datetime,
	[deleted] int, 
	FOREIGN KEY (user_id) REFERENCES [Account](id)
);

create table [Brand](
	[brand_id] int not null identity(1,1) primary key,
	[brand_name] nvarchar(100),
	[description] nvarchar(2000),
	[brand_address] nvarchar(255),
	[imageUrl] varchar(900)
);


create table [Order](
	[order_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[fullname] nvarchar(255) ,
	[address] nvarchar(255),
	[email] varchar(255),
	[phone_number] varchar(20),
	[note] nvarchar(1000) ,
	[oder_date] DATETIME ,
	[status] int ,
	[total_money] float ,
	FOREIGN KEY (user_id) REFERENCES [User](user_id) 
);

create table [Category](
	[category_id] int not null identity(1,1) primary key,	
	[category_name] nvarchar(255) 
);

create table [Product](
	[product_id] int not null identity(1,1) primary key,
	[product_name] varchar(255) ,
	[category_id] int ,
	[brand_id] int,
	[price] float ,
	[discount] float ,
	[imageUrl] varchar(900),
	[create_time] DATETIME ,
	FOREIGN KEY (category_id) REFERENCES [Category](category_id) ,
	FOREIGN KEY (brand_id) REFERENCES [Brand](brand_id)	 
);

create table [OrderDetails](
	[od_id] int not null identity(1,1) primary key,
	[order_id]  int  ,
	[product_id] int ,
	[price] float ,
	[quantity] int ,
	[total_money] float ,
	FOREIGN KEY (order_id) REFERENCES [Order](order_id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id) 
);

create table [Info](
	[info_id] int not null  primary key,
	[material] nvarchar(500) ,
	[color] nvarchar(200) ,
	[title] nvarchar(100) ,
	[description] nvarchar(2000) ,
	FOREIGN KEY (info_id) REFERENCES [Product](product_id) 
);

create table [Feedback](
	[feedback_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[product_id] int ,
	[fullname] nvarchar(255)  ,
	[note] nvarchar(1000),
	[status] int ,
	[create_time] DATETIME ,
	[update_time] DATETIME ,
	FOREIGN KEY (user_id) REFERENCES [User](user_id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id)
);

ALTER TABLE [Info] ADD
[imageUrl1] varchar(900),
[imageUrl2] varchar(900),
[imageUrl3] varchar(900)