-- 授權資料表
drop table if exists level_ref_service;	
drop table if exists service;
drop table if exists level;

drop table if exists cartitem;
drop table if exists cart;
drop table if exists usersusers;
drop table if exists products;
drop table if exists Category;
drop table if exists FavoriteProduct;
drop table if exists Contact;

-- 建立 Service table
create table if not exists service(
    serviceId int primary key,
    serviceLocation varchar(50),
    serviceName varchar(50),
    serviceUrl varchar(50)
);

-- 建立 Level
create table if not exists level(
    levelId int primary key,
    levelName varchar(50)
);

-- 建立 Service 與 Level 之間的關聯表 table
create table if not exists level_ref_service(
    levelId int not null ,
    serviceId int not null,
    sort int default 1,
    foreign key (levelId) references level(levelId),
    foreign key (serviceId) references service(serviceId),
    constraint unique_sid_and_aid UNIQUE(levelId, serviceId)
);


-- 建立User
create table if not exists Users (
  `UserId` INT NOT NULL auto_increment primary key,
  `Username` VARCHAR(45) NOT NULL,
  `PasswordHash` VARCHAR(45) NOT NULL,
  `level` INT NOT NULL,
  `Email` VARCHAR(45) NULL,
  `PhoneNumber` VARCHAR(20) NULL);
  -- 設置 AUTO_INCREMENT = 1
alter table Users auto_increment = 1;


-- 建立 Cart 購物車主檔
create table if not exists Cart (
  `cartId` INT NOT NULL auto_increment primary key,
  `CheckoutTime` DATETIME,
  `isCheckout` TINYINT,
  `DeliveryStatus` ENUM('處理中', '運送中', '已完成', '已取消'),
  `DeliveryAddress` VARCHAR(255),
  `OrderDate` DATETIME,
  `UserId` INT);
    -- 設置 AUTO_INCREMENT = 1
alter table cart auto_increment = 1;


-- 建立 CartItem 購物車明細檔
create table if not exists CartItem (
  `ItemId` INT NOT NULL  auto_increment primary key,
  `Quantity` INT NOT NULL,
  `CartId` INT NOT NULL,
  `productId` INT NOT NULL);
-- 設置 AUTO_INCREMENT = 1
alter table CartItem auto_increment = 1;


-- 建立 Category 商品分類明細檔
create table if not exists Category (
  `CategoryId` INT NOT NULL auto_increment primary key,
  `Category` VARCHAR(45) NOT NULL);
-- 設置 AUTO_INCREMENT = 1
alter table Category auto_increment = 1;

-- 建立 Product
create table if not exists Products (
  `ProductId` INT NOT NULL auto_increment primary key,
  `ProductName` VARCHAR(50) NOT NULL,
  `Price` INT NOT NULL,
  `StockQuantity` INT NOT NULL,
  `Description` VARCHAR(200),
  `isLaunch` TINYINT NOT NULL,
  `CategoryId` INT);
-- 設置 AUTO_INCREMENT = 1
alter table Products auto_increment = 1;


-- 建立 FavoriteProduct 最愛商品檔
create table if not exists FavoriteProduct (
  `FavoriteProductId` INT NOT NULL  auto_increment primary key,
  `UserId` INT,
  `ProductId` INT);
-- 設置 AUTO_INCREMENT = 1
alter table FavoriteProduct auto_increment = 1;


-- 建立 Contact 檔
create table if not exists Contact (
  `ContactId` INT NOT NULL AUTO_INCREMENT primary key,
  `Name` VARCHAR(255) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `Tital` VARCHAR(255) NOT NULL,
  `Text` VARCHAR(255) NOT NULL);


-- 預設資料

insert into level(levelId, levelName) values(1, '一般客戶');
insert into level(levelId, levelName) values(2, '內部員工');

INSERT INTO Category (CategoryId, Category) VALUES
(1, 'Whiskey'),
(2, 'Rum'),
(3, 'Gin'),
(4, 'Tequila'),
(5, 'Vodka'),
(6, 'Liqueur'),
(7, 'Cocktail'),
(8, 'PlumWine');

INSERT INTO Products (productName, price, StockQuantity, Description, isLaunch, CategoryId) VALUES
('a', 300.00, 20, 'abc', true, 1),
('b', 150.00, 30, 'abc', false, 5),
('c', 200.00, 40, 'abc', false, 3),
('d', 100.00, 20, 'abc', true, 2),
('e', 450.00, 60, 'abc', true, 4);

-- password 已透過 AES 進行加密
-- KEY = 0123456789abcdef0123456789abcdef
INSERT INTO users (username, PasswordHash, level, Email, PhoneNumber) VALUES
('user123', 'JqKLj+4Aw3DnndH0MHUQkg==', 1, 'aaa@gmail.com', 0922334455),
('user456', 'ormIciIAHZjZjQYphMuCHQ==', 2, 'bbb@gmail.com', 0911223344),
('user789', 'Nj8ZE1H01l0cDeX/GskzXg==', 1, 'ccc@gmail.com', 0977889944);

INSERT INTO cart (userId, isCheckout, checkoutTime, DeliveryStatus, DeliveryAddress) VALUES
(1, true, current_timestamp, '處理中', 'xx市xx路xx號'),
(1, false, NULL, '已取消', 'xx市xx路xx號'),
(3, true, current_timestamp, '已完成', 'xx市xx路xx號'),
(3, false, NULL, '已取消', 'xx市xx路xx號'),
(2, true, current_timestamp, '運送中', 'xx市xx路xx號');

INSERT INTO cartitem (cartId, productId, quantity) VALUES
(1, 1, 10),
(1, 2, 8),
(2, 3, 5),
(3, 2, 8),
(5, 4, 20),
(5, 5, 15);

-- 每個使用者的總消費金額
-- 建立View
/*
create view UserTotalAmountView as
select u.userId, u.username,coalesce(sum(p.price*ci.quantity),0) as total
from user u
left join cart c on u.userId = c.userId
left join cartitem ci on c.cartId= ci.cartId
left join product p on ci.productId = p.productId
where c.isCheckout = true
group by u.userId, u.username
*/
