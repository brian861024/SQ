

-- level

select * from level;

insert into level (levelId, levelName) values ( 1, '客戶');
insert into level (levelId, levelName) values ( 2, '員工');


-- user

select * from user;

insert into user (username, password, levelId, email, phoneNumber) values ('王大明', '123456' , 1 , 'aaa@gmail.com' , '0911111111' );
insert into user (username, password, levelId, email, phoneNumber) values ('王小明', '234567' , 1 , 'bbb@gmail.com' , '0922222222' );
insert into user (username, password, levelId, email, phoneNumber) values ('王大黑', '345678' , 2 , 'ccc@gmail.com' , '0933333333' );
insert into user (username, password, levelId, email, phoneNumber) values ('王小黑', '456789' , 1 , 'ddd@gmail.com' , '0944444444' );
insert into user (username, password, levelId, email, phoneNumber) values ('王大白', '567891' , 2 , 'eee@gmail.com' , '0955555555' );
insert into user (username, password, levelId, email, phoneNumber) values ('王小白', '678912' , 1 , 'fff@gmail.com' , '0966666666' );


-- category

select * from category;

insert into category (categoryId, categoryName) values ( 1, 'none');
insert into category (categoryId, categoryName) values ( 2, 'Whiskey');
insert into category (categoryId, categoryName) values ( 3, 'Fruit Wine');
insert into category (categoryId, categoryName) values ( 4, 'Wine');
insert into category (categoryId, categoryName) values ( 5, 'Base_Spirit');
insert into category (categoryId, categoryName) values ( 6, 'Barware');
insert into category (categoryId, categoryName) values ( 21, 'Scotch_Whisky');
insert into category (categoryId, categoryName) values ( 22, 'Japanese_Whisky');
insert into category (categoryId, categoryName) values ( 23, 'Taiwanese_Whisky');


-- product

select * from product;

insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Whiskey', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 0 , 2);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Taiwanese_Whisky', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 0 , 23);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Rum', 150 , 10 , '由甘蔗副產品製成，淺色、深色、香料風味多樣。' , 1 , 5);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Gin', 100 , 30 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Tequila', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Liqueur', 200 , 0 , '甜美且風味豐富的複合型烈酒。' , 0 , 5);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('Plum', 200 , 8 , '以梅子為基礎的酒品，風味獨特。' , 1 , 3);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('雷伯五號 威士忌', 700 , 8 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 1 , 3);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('帝王8年 龍舌蘭風味桶 750ml', 680 , 8 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 1 , 3);
insert into product (productName, price, stockQty, description, isLaunch, categoryId) values ('CHOYA 梅子風味氣泡酒 750ml', 480 , 8 , '以梅子為基礎的酒品，風味獨特。' , 1 , 3);


-- cart

select * from cart;

insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-18 12:34:56' , TRUE , '處理中' , 'aaa市aaa區aaa路aa號' , 2 , 250);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ( null, false , null , null , 1 , 400);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-18 15:34:56' , TRUE , null , null  , 4 , 250);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ( null, false , '已完成' , 'bbb市bbb區bbb路bb號' , 1 , 250);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-18 14:34:56' , TRUE , '已取消' , 'ccc市ccc區ccc路cc號' , 3 , 400);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-18 13:34:56' , TRUE , '運送中' , 'ddd市ddd區ddd路dd號' , 3 , 400);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ( null , false ,  null , null , 6 , 250);


-- cartItem

select * from cartItem;

insert into cartItem (cartId, productId, price, qty) values ( 1, 3 , 150 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 1, 4 , 100 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 2, 5 , 200 , 2);
insert into cartItem (cartId, productId, price, qty) values ( 3, 3 , 150 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 3, 4 , 100 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 4, 3 , 150 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 4, 4 , 100 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 5, 6 , 200 , 2);
insert into cartItem (cartId, productId, price, qty) values ( 6, 7 , 200 , 2);
insert into cartItem (cartId, productId, price, qty) values ( 7, 3 , 150 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 7, 4 , 100 , 1);


-- favorite

select * from favorite;

insert into favorite (userId, productId) values (1,1);
insert into favorite (userId, productId) values (1,2);
insert into favorite (userId, productId) values (1,3);
insert into favorite (userId, productId) values (4,5);
insert into favorite (userId, productId) values (5,1);
insert into favorite (userId, productId) values (6,5);


-- contact

select * from contact;

insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('王大紅' , 'ggg@gmail.com' , '問價格' , '請問...');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('王小紅' , 'hhh@gmail.com' , '問購買方式' , '請問...');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('王大橙' , 'iii@gmail.com' , '問付款方式' , '請問...');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('王小橙' , 'jjj@gmail.com' , '問庫存' , '請問...');


