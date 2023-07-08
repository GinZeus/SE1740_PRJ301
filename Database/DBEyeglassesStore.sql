
/********* CREATE DATABASE *********/
CREATE DATABASE eyeglassstore
go
use eyeglassstore
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
	[brand_address] nvarchar(255),
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
	[imageUrl1] varchar(900),
	[imageUrl2] varchar(900),
	[imageUrl3] varchar(900),
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
--Category
insert into [Category] values (N'Kính râm')
insert into [Category] values (N'Gọng kính')
insert into [Category] values (N'Kính áp tròng')
insert into [Category] values (N'Tròng kính')
insert into [Category] values (N'Gọng kính trẻ em')
--select * from Category

--Brand
insert into [Brand](brand_name,brand_address)values('Chemi',N'Hàn Quốc')
insert into [Brand](brand_name,brand_address)values('Hoga',N'Nhật Bản')
insert into [Brand](brand_name,brand_address)values('Thailand',N'Thái Lan')
insert into [Brand](brand_name,brand_address)values('Essilor',N'Pháp')
insert into [Brand](brand_name,brand_address)values('Elements',N'Singapore')
insert into [Brand](brand_name,brand_address)values('Anna',N'Việt Nam')
--select * from Brand

insert into [Account] values ('admin','admin','admin@gmail.com',1)
insert into [Account] values ('test','test','test@gmail.com',2)
select * from Account

--Product
--Kính râm
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT036','1','6','19','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-156.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT055','1','1','25','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-90.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT056','1','2','29','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-120.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT057','1','5','19','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-225.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT060','1','4','17','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-11.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT061','1','2','19','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-49.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT062','1','6','20','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-192.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT063','1','3','24','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-132.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT064','1','5','17','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-207.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT065','1','1','29','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-66.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KR – RCT066','1','4','23','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-29.jpg',GETDATE())
--select * from Product

--Gọng kính
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 800NC005','2','3','30','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-11_1-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 800NC004','2','1','30','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-195-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 800NC003','2','4','30','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-225-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 800NC001','2','6','30','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-243-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK134','2','2','15','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3955-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK116','2','1','17','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4094-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK124','2','5','20','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4017-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK118','2','4','26','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4082-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK113','2','6','16','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3975-copy-1-Copy.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK132','2','5','26','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3988-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK119','2','3','14','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4052-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK121','2','2','35','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4110-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK117','2','3','21','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4064-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 380CK131','2','1','17','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4001-copy-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 480CN004','2','4','28','https://kinhmatanna.com/wp-content/uploads/2023/03/004.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 300CN022','2','6','24','https://kinhmatanna.com/wp-content/uploads/2023/03/022.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 350CN008','2','5','18','https://kinhmatanna.com/wp-content/uploads/2023/03/008-1.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 300CN020','2','2','24','https://kinhmatanna.com/wp-content/uploads/2023/03/020.jpg',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('GK – 550CN031','2','1','13','https://kinhmatanna.com/wp-content/uploads/2023/03/031.jpg',GETDATE())

--select * from Product


select * from Brand