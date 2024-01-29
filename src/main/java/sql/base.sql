

-- level

select * from level;

insert into level (levelId, levelName) values ( 1, '客戶');
insert into level (levelId, levelName) values ( 2, '員工');


-- user

select * from user;

insert into user (username, password, levelId, email, phoneNumber) values ('陳美玲', '123456' , 1 , 'ava.yang@yahoo.com' , '0911111111' );
insert into user (username, password, levelId, email, phoneNumber) values ('林建宏', '234567' , 1 , 'bbb@gmail.com' , '0922222222' );
insert into user (username, password, levelId, email, phoneNumber) values ('王怡萱', '345678' , 2 , 'ccc@gmail.com' , '0933333333' );
insert into user (username, password, levelId, email, phoneNumber) values ('李明杰', '456789' , 1 , 'ddd@gmail.com' , '0944444444' );
insert into user (username, password, levelId, email, phoneNumber) values ('吳佳慧', '567891' , 2 , 'eee@gmail.com' , '0955555555' );
insert into user (username, password, levelId, email, phoneNumber) values ('許宗憲', '678912' , 1 , 'fff@gmail.com' , '0966666666' );


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

insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 1 , 2, 'LongIslandIcedTea.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Taiwanese_Whisky', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 0 , 23, 'wis-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gintonic', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 1 , 22, 'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Rum', 150 , 18 , '由甘蔗副產品製成，淺色、深色、香料風味多樣。' , 1 , 5, 'Screwdriver.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Rum', 350 , 10 , '由甘蔗副產品製成，淺色、深色、香料風味多樣。' , 1 , 5, 'rum-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('長島冰茶', 450 , 13 , '由甘蔗副產品製成，淺色、深色、香料風味多樣。' , 1 , 5, 'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gintonic', 100 , 30 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 200 , 27 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gin-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 300 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gin-3.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Tequila', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'liq-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'vod1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'vod1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 0 , '甜美且風味豐富的複合型烈酒。' , 0 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'liq-3.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 220 , 3 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 300 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gin-4.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Tequila', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'Screwdriver.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'OldFashioned.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 0 , '甜美且風味豐富的複合型烈酒。' , 0 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 220 , 3 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'pinklady.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 300 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Tequila', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'OldFashioned.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 0 , '甜美且風味豐富的複合型烈酒。' , 0 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 220 , 3 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'pinklady.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 1 , 2, 'LongIslandIcedTea.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Taiwanese_Whisky', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 0 , 23, 'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gintonic', 200 , 20 , '由穀物糖漿蒸餾，如波本、蘇格蘭、裡爾等，風味獨特。' , 1 , 22, 'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Rum', 150 , 18 , '由甘蔗副產品製成，淺色、深色、香料風味多樣。' , 1 , 5, 'rum-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Rum', 350 , 10 , '由甘蔗副產品製成，淺色、深色、香料風味多樣。' , 1 , 5, 'rum-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('長島冰茶', 450 , 13 , '由甘蔗副產品製成，淺色、深色、香料風味多樣。' , 1 , 5, 'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gintonic', 100 , 30 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 200 , 27 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gin-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 300 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Tequila', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'pinklady.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'OldFashioned.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 0 , '甜美且風味豐富的複合型烈酒。' , 0 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 220 , 3 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 300 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Tequila', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'Screwdriver.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'OldFashioned.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 0 , '甜美且風味豐富的複合型烈酒。' , 0 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 220 , 3 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'pinklady.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gin', 300 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Tequila', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'OldFashioned.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Vodka', 200 , 12 , '無色無味的烈酒，適合製作各種雞尾酒。' , 1 , 5,'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 200 , 0 , '甜美且風味豐富的複合型烈酒。' , 0 , 5,'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 220 , 3 , '甜美且風味豐富的複合型烈酒。' , 1 , 5,'pinklady.webp');
-- cart

select * from cart;

insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-18 12:34:56' , TRUE , '處理中' , 'aaa市aaa區aaa路aa號' , 2 , 250);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ( null, false , null , null , 1 , 400);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-18 15:34:56' , TRUE , null , null  , 4 , 250);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ( null, TRUE , '已完成' , 'bbb市bbb區bbb路bb號' , 1 , 250);
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

insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('鄭雅琪' , 'john.doe@gmail.com' , '求建議' , '我應該選擇哪一款酒來搭配我的晚餐？有什麼建議嗎？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('湯志偉' , 'emily.jones@hotmail.com' , '葡萄酒該怎麼選' , '我喜歡葡萄酒，但對於不同的葡萄品種和產區不太了解，有沒有推薦的品牌或款式？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('蔡佳玲' , 'sophia.kim@example.net' , '派對酒套裝推薦' , '我正在籌備一個派對，需要購買一些特別的酒，有什麼優惠或套裝推薦嗎？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('郭宜萱' , 'michael.chen@yahoo.com' , '送酒建議' , '我想送禮給一位酒愛好者朋友，有沒有適合送禮的高品質酒款推薦？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('陳志明' , 'ethan.liu@gmail.com' , '請問價格' , '請問有賣asb vodka嗎？那價格是多少呢？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('黃美玲' , 'william.huang@hotmail.com' , '送酒建議' , '我想送禮給一位酒愛好者朋友，有沒有適合送禮的高品質酒款推薦？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('楊建文' , '0924587648' , '如何辨識不同年份的葡萄酒' , '如題，聽說葡萄酒的年份很重要，我應該如何辨識不同年份的葡萄酒？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('林惠婷' , '0945816789' , '選品問題' , '我最近品嚐了一款很好的威士忌，想知道是否還有其他類似風格的推薦？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('劉宗翰' , 'jeff1235@gmail.com' , '儲藏問題' , '我在家中儲藏了一些酒，想知道最佳的保存方法和時間，以確保酒的品質？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('邱雅婷' , 'monica4051@yahoo.com' , '有品酒課程嗎？' , '我想參加一些品酒活動或酒類課程，您能推薦一些好的選擇嗎？');
insert into contact (customerName, customerEmail, contactTitle, contactContext) values ('鍾偉明' , '0978164872' , '導覽活動詢問' , '我對於酒的產區和製作過程很感興趣，您有提供有關這方面的知識分享或導覽活動嗎？');

-- notice

select * from notice;

insert into notice (noticeTitle, noticeContext) values ('《主題酒單》醉暖聖誕節🎄微醺的季節 又來囉！' , '🎄《主題酒單》醉暖聖誕節，微醺的季節又來囉！在這個溫馨的時刻，讓我們為您準備了精選的主題酒品，讓您在節慶中品味微醺的美好。來店感受節慶氛圍，一起度過溫馨愉快的聖誕時光！🍷🎁');
insert into notice (noticeTitle, noticeContext) values ('《好朋友專區》我來惹~ 好朋友幫您把包裹變免運！' , '🎉《好朋友專區》我來惹~ 現在購物更方便！好朋友們幫您把包裹變成免運費！不論是送禮還是自用，讓好朋友幫您省下運費，一同分享購物的樂趣。快來參加好朋友專區，享受輕鬆愉快的購物體驗！🎁🚚');
