
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
	[fullname] nvarchar(255),
	[address] nvarchar(255),
	[phone_number] varchar(20),
	[DOB] datetime,
	[role] int,
	[deleted] int
);


select * from Account

select top 4 * from Product
order by NEWID()

insert into Account values ('admin','admin','admin@gmail.com','admin',N'việt nam','123456','1','0')
insert into Account values ('test','test','test@gmail.com','test',N'việt nam','123456','2','0')

create table [Brand](
	[brand_id] int not null identity(1,1) primary key,
	[brand_name] nvarchar(100),
	[brand_address] nvarchar(255),
);


create table [Order](
	[order_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[fullname] nvarchar(255),
	[address] nvarchar(255),
	[email] varchar(255),
	[phone_number] varchar(20),
	[note] nvarchar(1000) ,
	[oder_date] DATETIME ,
	[status] int ,
	[total_money] float ,
	FOREIGN KEY (user_id) REFERENCES [Account](id) 
);
--
select * from [Order] where [order_id]=3
--drop table [Order]

insert into [Order] values ('1',N'dat',N'viet nam','1@gmail.com','1234','test',GETDATE(),'1','20')

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
	[deleted] int,
	FOREIGN KEY (category_id) REFERENCES [Category](category_id) ,
	FOREIGN KEY (brand_id) REFERENCES [Brand](brand_id)	 
);
select * from Product where deleted = 0



create table [OrderDetails](
	[od_id] int not null identity(1,1) primary key,
	[order_id]  int  ,
	[product_id] int ,
	[price] float ,
	[quantity] int ,
	FOREIGN KEY (order_id) REFERENCES [Order](order_id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id) 
);

select * from [OrderDetails]
--drop table OrderDetails
--alter table OrderDetails drop column total_money


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

SELECT * FROM [Product]
WHERE category_id=1
and deleted = 0

select * from Product
where deleted = 0
order by product_id
offset 0 rows fetch next 9 rows only

select * from Product
select * from Info i, Product p
where i.info_id=p.product_id
select COUNT(*) from Product where deleted=0
create table [Feedback](
	[feedback_id] int not null identity(1,1) primary key,
	[user_id] int ,
	[product_id] int ,
	[fullname] nvarchar(255)  ,
	[note] nvarchar(1000),
	[status] int ,
	[create_time] DATETIME ,
	[update_time] DATETIME ,
	FOREIGN KEY (user_id) REFERENCES [Account](id),
	FOREIGN KEY (product_id) REFERENCES [Product](product_id)
);
--drop table feedback
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

--Kính áp tròng
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KÍNH ÁP TRÒNG – TA405','3','1','12','https://kinhmatanna.com/wp-content/uploads/2023/04/TA405.png',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KÍNH ÁP TRÒNG – TA409','3','2','11','https://kinhmatanna.com/wp-content/uploads/2023/04/TA409.png',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KÍNH ÁP TRÒNG – TE006','3','3','16','https://kinhmatanna.com/wp-content/uploads/2023/04/TE006.png',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KÍNH ÁP TRÒNG – TH358','3','4','18','https://kinhmatanna.com/wp-content/uploads/2023/04/TH358.png',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KÍNH ÁP TRÒNG – TH359','3','5','13','https://kinhmatanna.com/wp-content/uploads/2023/04/TH-359.png',GETDATE())
insert into [Product](product_name,category_id,brand_id,price,imageUrl,create_time) values ('KÍNH ÁP TRÒNG – TN159','3','6','11','https://kinhmatanna.com/wp-content/uploads/2023/04/TN159.png',GETDATE())


--select * from Product

--Info
--Kính râm
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('1',N'Nhựa cao cấp',N'Xanh lá, Ghi, Đen nâu',N'KR – RCT036',N'Kính râm thời trang KR – RCT036 là mẫu sản phẩm được thiết kế độc quyền bởi Anna. KR – RCT036 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-156.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-160.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-158.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('2',N'Nhựa cao cấp',N'Đen bóng, Ghi, Nâu',N'KR – RCT055',N'Kính râm thời trang KR – RCT055 là mẫu sản phẩm được thiết kế độc quyền bởi Chemi. KR – RCT055 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-90.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-98.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-96.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('3',N' Nhựa cao cấp',N'Lỳ đồi mồi, Đen đồi mồi, Nâu',N'KR – RCT056',N'Kính râm thời trang KR – RCT056 là mẫu sản phẩm được thiết kế độc quyền bởi Hoga. KR – RCT056 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-120.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-123.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-122.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('4',N' Nhựa cao cấp',N'Vàng nâu, Ghi sữa, Đen bóng',N'KR – RCT057',N'Kính râm thời trang KR – RCT057 là mẫu sản phẩm được thiết kế độc quyền bởi Elements. KR – RCT057 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-225.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-226.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-223.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('5',N' Nhựa cao cấp',N'Đen bóng, Đen hồng, Đen mắt xanh dương',N'KR – RCT060',N'Kính râm thời trang KR – RCT060 là mẫu sản phẩm được thiết kế độc quyền bởi Essilor. KR – RCT060 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-11.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-14.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-12.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('6',N' Nhựa cao cấp',N'Hồng, đen bóng, đen trắng',N'KR – RCT061',N'Kính râm thời trang KR – RCT061 là mẫu sản phẩm được thiết kế độc quyền bởi Hoga. KR – RCT061 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-49.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-50.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-46.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('7',N' Nhựa cao cấp',N'Đen bóng, Đen nâu, Hồng',N'KR – RCT062',N'Kính râm thời trang KR – RCT062 là mẫu sản phẩm được thiết kế độc quyền bởi Anna. KR – RCT062 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-192.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-194.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-192.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('8',N' Nhựa cao cấp',N'Đen lỳ, nâu, đen bóng',N'KR – RCT063',N'Kính râm thời trang KR – RCT063 là mẫu sản phẩm được thiết kế độc quyền bởi Anna. KR – RCT063 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-132.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-135.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-133.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('9',N' Nhựa cao cấp',N'Đen nâu, đen bóng, đen lỳ',N'KR – RCT064',N'Kính râm thời trang KR – RCT064 là mẫu sản phẩm được thiết kế độc quyền bởi Anna. KR – RCT064 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-207.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-206.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-210.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('10',N' Nhựa cao cấp',N'Đen vàng, đen lỳ, đen bóng',N'KR – RCT065',N'Kính râm thời trang KR – RCT065 là mẫu sản phẩm được thiết kế độc quyền bởi Anna. KR – RCT065 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-66.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-65.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-66.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('11',N' Nhựa cao cấp',N'Đen lỳ, nâu, đen nâu',N'KR – RCT066',N'Kính râm thời trang KR – RCT066 là mẫu sản phẩm được thiết kế độc quyền bởi Anna. KR – RCT066 được thiết kế bởi chất liệu nhựa cao cấp bền bỉ với thời gian, mang đến những trải nghiệm độc đáo như: giá trị sử dụng lâu dài, mặt kính bóng đẹp, khó bị gỉ, chống chịu tốt bởi tác động của môi trường,…','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-29.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-31.jpg','https://kinhmatanna.com/wp-content/uploads/2023/05/Anna-30.jpg')

--Gọng kính
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('12',N'Nhựa Acetate',N'Ghi, đen bóng',N'GK – 800NC005',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng.','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-11_1-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-12_1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-11_1-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('13',N'Nhựa Acetate',N'Ghi, đen bóng',N'GK – 800NC004',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng.','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-195-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-196-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-195-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('14',N'Nhựa Acetate',N'Ghi, đen bóng',N'GK - 800NC003',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng.','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-225-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-225-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-225-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('15',N'Nhựa Acetate',N'Vân đá, đen xanh, đen bóng',N'GK - 800NC001',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-243-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-242-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/Anna-244-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('16',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK134',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3955-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3957-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3959-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('17',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK116',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4092-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4094-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4096-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('18',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK124',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4017-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4015-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4019-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('19',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK118',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4082-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4076-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4080-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('20',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK113',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3975-copy-1-Copy.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3977-copy-1-Copy.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3979-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('21',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK132',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3988-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3990-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_3994-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('22',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK119',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4052-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4054-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4056-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('23',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK121',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4110-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4108-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4106-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('24',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK117',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4064-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4066-copy-1-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4068-copy-1-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('25',N'Kim Loại',N'Đen hồng, Bạc, Đen trắng',N'GK – 380CK131',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4001-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4004-copy-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/06/DSC_4008-copy-1.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('26',N'Titan',N'Đen hồng, Bạc, Đen trắng',N'GK – 480CN004',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/03/004.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/6940-3.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/6940-2.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('27',N'Nhựa kim loại',N'xanh, ghi, đen bóng',N'GK – 300CN022',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/03/022.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/12483-4.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/12483-2.jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('28',N'Nhựa kim loại',N'Nâu, đen bóng',N'GK – 350CN008',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/03/008-1.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/7712..jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/7712...jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('29',N'Nhựa dẻo',N'Đen, đen lì, ghi',N'GK – 300CN020',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/03/020.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/5835-3.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/5835..jpg')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('30',N'Nhựa kim loại',N'trắng, đen trắng, đen vàng',N'GK – 550CN031',N'Gọng kính cá tính có điểm nhấn nổi bật nằm ở thiết kế hai bên càng kính. Form dáng cá tính, mạnh mẽ và độc đáo, thích hợp làm mới vẻ ngoài của người sử dụng','https://kinhmatanna.com/wp-content/uploads/2023/03/031.jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/1376..jpg','https://kinhmatanna.com/wp-content/uploads/2023/03/1376...jpg')

--Kính áp tròng
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('31',N'Silicone Hydrogel',N'Đen tự nhiên',N'KÍNH ÁP TRÒNG – TA405',N'Được làm bằng chất liệu Silicone Hydrogel hỗ trợ mắt thở tiên tiến nhất hiện nay. Với kính áp tròng chất liệu Silicone Hydrogel bạn có thể an tâm sử dụng đến 12 tiếng mỗi ngày, đảm bảo tầm nhìn cho mọi hoạt động trong ngày của bạn.','https://kinhmatanna.com/wp-content/uploads/2023/04/TA405.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TA405.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TA405.png')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('32',N'Silicone Hydrogel',N'Xám nâu',N'KÍNH ÁP TRÒNG – TA409',N'Được làm bằng chất liệu Silicone Hydrogel hỗ trợ mắt thở tiên tiến nhất hiện nay. Với kính áp tròng chất liệu Silicone Hydrogel bạn có thể an tâm sử dụng đến 12 tiếng mỗi ngày, đảm bảo tầm nhìn cho mọi hoạt động trong ngày của bạn.','https://kinhmatanna.com/wp-content/uploads/2023/04/TA409.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TA409.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TA409.png')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('33',N'Silicone Hydrogel',N'Xám mật ong',N'KÍNH ÁP TRÒNG – TE006',N'Được làm bằng chất liệu Silicone Hydrogel hỗ trợ mắt thở tiên tiến nhất hiện nay. Với kính áp tròng chất liệu Silicone Hydrogel bạn có thể an tâm sử dụng đến 12 tiếng mỗi ngày, đảm bảo tầm nhìn cho mọi hoạt động trong ngày của bạn.','https://kinhmatanna.com/wp-content/uploads/2023/04/TE006.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TE006.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TE006.png')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('34',N'Silicone Hydrogel',N'Xám tự nhiên, đen vàng',N'KÍNH ÁP TRÒNG – TH358',N'Được làm bằng chất liệu Silicone Hydrogel hỗ trợ mắt thở tiên tiến nhất hiện nay. Với kính áp tròng chất liệu Silicone Hydrogel bạn có thể an tâm sử dụng đến 12 tiếng mỗi ngày, đảm bảo tầm nhìn cho mọi hoạt động trong ngày của bạn.','https://kinhmatanna.com/wp-content/uploads/2023/04/TH358.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TH358.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TH358.png')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('35',N'Silicone Hydrogel',N'Xám pha nâu rêu',N'KÍNH ÁP TRÒNG – TH359',N'Được làm bằng chất liệu Silicone Hydrogel hỗ trợ mắt thở tiên tiến nhất hiện nay. Với kính áp tròng chất liệu Silicone Hydrogel bạn có thể an tâm sử dụng đến 12 tiếng mỗi ngày, đảm bảo tầm nhìn cho mọi hoạt động trong ngày của bạn.','https://kinhmatanna.com/wp-content/uploads/2023/04/TH-359.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TH-359.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TH-359.png')
insert into [Info](info_id,material,color,title,description,imageUrl1,imageUrl2,imageUrl3) values ('36',N'Silicone Hydrogel',N'Xám tro',N'KÍNH ÁP TRÒNG – TN159',N'Được làm bằng chất liệu Silicone Hydrogel hỗ trợ mắt thở tiên tiến nhất hiện nay. Với kính áp tròng chất liệu Silicone Hydrogel bạn có thể an tâm sử dụng đến 12 tiếng mỗi ngày, đảm bảo tầm nhìn cho mọi hoạt động trong ngày của bạn.','https://kinhmatanna.com/wp-content/uploads/2023/04/TN159.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TN159.png','https://kinhmatanna.com/wp-content/uploads/2023/04/TN159.png')

