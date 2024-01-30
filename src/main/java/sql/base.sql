

-- level

select * from level;

insert into level (levelId, levelName) values ( 1, '客戶');
insert into level (levelId, levelName) values ( 2, '員工');


-- user

select * from user;

insert into user (username, password, levelId, email, phoneNumber) values ('陳美玲', '123456' , 2 , 'ava.yang@yahoo.com' , '0911111111' );
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

insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 300 , 20 , 'Mojito（莫吉托）是一種來自古巴的傳統雞尾酒，它以清新的薄荷和檸檬為特色，是一種非常受歡迎的夏季飲品。這款飲料的起源可以追溯到16世紀的古巴，最初是由當地人使用當地的薄荷和其他原料製作而成的。' , 1 , 2, 'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Long Island Iced Tea', 400 , 13 , '長島冰茶（Long Island Iced Tea）是一款混合型的雞尾酒，其特點在於它的強烈的酒精含量和多種基酒的組合。儘管名字中包含“茶”一詞，但實際上，它並不含有茶，而是由多種白色烈酒、檸檬汁、糖漿和蘇打水混合製成。' , 1 , 5, 'LongIslandIcedTea.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gintonic', 200 , 20 , 'Gin and Tonic（G&T）是一種經典的雞尾酒，通常簡稱為"Gintonic"。這種飲料的主要成分是杜松子酒（Gin）和奎寧水（Tonic Water）。這款雞尾酒的口感涼爽，清新，廣受歡迎，特別是在夏季。' , 1 , 22, 'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Screwdriver', 150 , 18 , 'Screwdriver（螺絲起子）是一款簡單而經典的雞尾酒，僅由兩種基本成分組成：橙汁和伏特加。這款飲料以其清爽、果香和易製作的特點而聞名，是一種非常受歡迎的雞尾酒，特別是在夏季或需要一款簡單而美味的飲品時。' , 1 , 5, 'Screwdriver.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('百家得LIGHT蘭姆酒【700ml】', 350 , 10 , '百家得(Bacardi)起源於1862年的古巴，現在總公司則設立在百慕達的漢彌爾頓，是全世界最大的蘭姆酒製造商，百家得蘭姆酒(Bacardi RUM)由 1830 年從西班牙移民古巴的 T. F. Bacarid 所開發的酒款。' , 1 , 5, 'rum-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('皇家禮炮21年【750ml】', 1680 , 20 , '皇家禮炮21年為使用陳年珍釀特別調製的酒款，裝入知名陶瓷廠韋德(Wade)工匠親手打造的瓶身，向英國國家和皇室特殊場合之傳統儀式21響禮炮的傳統致敬。' , 1 , 23, 'wis-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('日本六ROKU頂級琴酒【700ml】', 650 , 30 , 'ROKU在日文裡代表著「六」，六（ROKU）使用了6種經典的日本植物：櫻花、櫻花葉、日本柚子皮、煎茶、玉露，日本山椒；這些植物都是順應四季時序，在植物最盛開的時候採收並擷取其中的精華及香氣，經過日本大阪三得利烈酒廠的日本琴酒工藝師浸製、蒸餾、最後調和而成。' , 1 , 5,'gin-4.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('英國英人牌琴酒【700ml】', 450 , 27 , 'BEEFEATER琴酒經過雙重蒸餾，且由專業釀酒師Desmond Payne細膩的調配混合而產出最高品質的琴酒。' , 1 , 5,'gin-3.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('英國龐貝藍鑽特級琴酒【700ml】', 479 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gin-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('墨西哥 銀快活龍舌蘭酒【700ml】', 450 , 4 , '銀快活龍舌蘭酒經過2次蒸餾，含有最原始的龍舌蘭風味，銀快活龍舌蘭酒清新的柑橘香味，散發出完美細緻的口感;也正因為它的獨特，在單杯飲用時，只需事先冰凍，而不需再另用鹽巴及檸檬做搭配。' , 1 , 5,'taq-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('絕對伏特加【700ml】', 380 , 12 , 'Absolut Vodka在1979年於紐約問世，隨即便成為熱門話題，旋風橫掃美國，魅力風靡全球。但是，Absolut口感天然醇厚的秘密，其實已醞釀超過 30 載。' , 1 , 5,'vod-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('教師牌調和式威士忌【1000ml】', 350 , 12 , '教師牌1000ml 創立於1863年，也被稱為老蘇格蘭威士忌中的完美傑作 (Perfection of Old Scotch Whisky)。1899年，此威士忌酒廠另建立Ardmore純麥蒸餾廠，另外在1957年又併購了Glendronach純麥蒸餾廠，正式形成了「教師蘇格蘭威士忌」這支酒款。' , 1 , 5,'wis-3.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Salty Dog', 200 , 0 , '鹹狗（Salty Dog）是一種清爽的雞尾酒，主要以葡萄柚汁和伏特加（或龍舌蘭酒）為基礎，並在杯緣灑上鹽巴，使其呈現酸甜的口感搭配鹹味。這款飲品在夏季非常受歡迎，是一種簡單而美味的雞尾酒。' , 0 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '粉紅淑女（Pink Lady）是一款經典的雞尾酒，以其淡粉色調和甜美的味道而聞名。這款雞尾酒通常包含琴酒（Gin）、蘋果白蘭地（Applejack）或蘋果白蘭姆（Apple Brandy）、檸檬汁、和蛋白。有時候，糖漿也會被添加以增加甜度。' , 1 , 5,'pink-lady.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Negroni', 220 , 3 , 'Negroni（尼格羅尼）是一款經典的意大利雞尾酒，由金巴利（Gin）、紅色苦艾酒（Campari）和甜化苦味酒（Sweet Vermouth）混合製成。它的成分比例相當簡單，但這三種成分的搭配使得 Negroni 具有獨特的風味。' , 1 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Old-Fashioned', 300 , 21 , 'Old-Fashioned（老式）是一款非常經典的雞尾酒，通常被認為是最古老的雞尾酒之一。它的特點在於其簡單而優雅的組成，並強調基酒的風味。Old-Fashioned的基本成分包括威士忌、糖和苦艾。' , 1 , 5,'Old-Fashioned-.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('法國君度香橙利口酒【700ml】', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'liq-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('OMAR雪莉果乾【700ml】', 900 , 12 , 'OMAR是蘇格蘭蓋爾語「琥珀」之意，因為台灣氣候炎熱，原酒成熟快，因此威士忌呈現略深的琥珀色。此款採用西班牙雪莉桶陳年，非冷凝過濾以46%酒精度裝瓶，除了雪莉桶原本的花香、果乾香氣，更帶有極有台灣味的香蕉、話梅，甚至檀香氣息，豐富有趣。' , 1 , 5,'wis-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Mojito', 300 , 20 , 'Mojito（莫吉托）是一種來自古巴的傳統雞尾酒，它以清新的薄荷和檸檬為特色，是一種非常受歡迎的夏季飲品。這款飲料的起源可以追溯到16世紀的古巴，最初是由當地人使用當地的薄荷和其他原料製作而成的。' , 1 , 2, 'mojido.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Long Island Iced Tea', 400 , 13 , '長島冰茶（Long Island Iced Tea）是一款混合型的雞尾酒，其特點在於它的強烈的酒精含量和多種基酒的組合。儘管名字中包含“茶”一詞，但實際上，它並不含有茶，而是由多種白色烈酒、檸檬汁、糖漿和蘇打水混合製成。' , 1 , 5, 'LongIslandIcedTea.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Gintonic', 200 , 20 , 'Gin and Tonic（G&T）是一種經典的雞尾酒，通常簡稱為"Gintonic"。這種飲料的主要成分是杜松子酒（Gin）和奎寧水（Tonic Water）。這款雞尾酒的口感涼爽，清新，廣受歡迎，特別是在夏季。' , 1 , 22, 'gintonic.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Screwdriver', 150 , 18 , 'Screwdriver（螺絲起子）是一款簡單而經典的雞尾酒，僅由兩種基本成分組成：橙汁和伏特加。這款飲料以其清爽、果香和易製作的特點而聞名，是一種非常受歡迎的雞尾酒，特別是在夏季或需要一款簡單而美味的飲品時。' , 1 , 5, 'Screwdriver.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('百家得LIGHT蘭姆酒【700ml】', 350 , 10 , '百家得(Bacardi)起源於1862年的古巴，現在總公司則設立在百慕達的漢彌爾頓，是全世界最大的蘭姆酒製造商，百家得蘭姆酒(Bacardi RUM)由 1830 年從西班牙移民古巴的 T. F. Bacarid 所開發的酒款。' , 1 , 5, 'rum-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('皇家禮炮21年【750ml】', 1680 , 20 , '皇家禮炮21年為使用陳年珍釀特別調製的酒款，裝入知名陶瓷廠韋德(Wade)工匠親手打造的瓶身，向英國國家和皇室特殊場合之傳統儀式21響禮炮的傳統致敬。' , 1 , 23, 'wis-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('日本六ROKU頂級琴酒【700ml】', 650 , 30 , 'ROKU在日文裡代表著「六」，六（ROKU）使用了6種經典的日本植物：櫻花、櫻花葉、日本柚子皮、煎茶、玉露，日本山椒；這些植物都是順應四季時序，在植物最盛開的時候採收並擷取其中的精華及香氣，經過日本大阪三得利烈酒廠的日本琴酒工藝師浸製、蒸餾、最後調和而成。' , 1 , 5,'gin-4.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('英國英人牌琴酒【700ml】', 450 , 27 , 'BEEFEATER琴酒經過雙重蒸餾，且由專業釀酒師Desmond Payne細膩的調配混合而產出最高品質的琴酒。' , 1 , 5,'gin-3.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('英國龐貝藍鑽特級琴酒【700ml】', 479 , 21 , '以杜松子為主，加入香草和柑橘皮，風味清新。' , 1 , 5,'gin-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('墨西哥 銀快活龍舌蘭酒【700ml】', 450 , 4 , '銀快活龍舌蘭酒經過2次蒸餾，含有最原始的龍舌蘭風味，銀快活龍舌蘭酒清新的柑橘香味，散發出完美細緻的口感;也正因為它的獨特，在單杯飲用時，只需事先冰凍，而不需再另用鹽巴及檸檬做搭配。' , 1 , 5,'taq-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('絕對伏特加【700ml】', 380 , 12 , 'Absolut Vodka在1979年於紐約問世，隨即便成為熱門話題，旋風橫掃美國，魅力風靡全球。但是，Absolut口感天然醇厚的秘密，其實已醞釀超過 30 載。' , 1 , 5,'vod-1.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('教師牌調和式威士忌【1000ml】', 350 , 12 , '教師牌1000ml 創立於1863年，也被稱為老蘇格蘭威士忌中的完美傑作 (Perfection of Old Scotch Whisky)。1899年，此威士忌酒廠另建立Ardmore純麥蒸餾廠，另外在1957年又併購了Glendronach純麥蒸餾廠，正式形成了「教師蘇格蘭威士忌」這支酒款。' , 1 , 5,'wis-3.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Salty Dog', 200 , 0 , '鹹狗（Salty Dog）是一種清爽的雞尾酒，主要以葡萄柚汁和伏特加（或龍舌蘭酒）為基礎，並在杯緣灑上鹽巴，使其呈現酸甜的口感搭配鹹味。這款飲品在夏季非常受歡迎，是一種簡單而美味的雞尾酒。' , 0 , 5,'stdog.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Pinklady', 250 , 12 , '粉紅淑女（Pink Lady）是一款經典的雞尾酒，以其淡粉色調和甜美的味道而聞名。這款雞尾酒通常包含琴酒（Gin）、蘋果白蘭地（Applejack）或蘋果白蘭姆（Apple Brandy）、檸檬汁、和蛋白。有時候，糖漿也會被添加以增加甜度。' , 1 , 5,'pink-lady.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Negroni', 220 , 3 , 'Negroni（尼格羅尼）是一款經典的意大利雞尾酒，由金巴利（Gin）、紅色苦艾酒（Campari）和甜化苦味酒（Sweet Vermouth）混合製成。它的成分比例相當簡單，但這三種成分的搭配使得 Negroni 具有獨特的風味。' , 1 , 5,'negroni.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('Old-Fashioned', 300 , 21 , 'Old-Fashioned（老式）是一款非常經典的雞尾酒，通常被認為是最古老的雞尾酒之一。它的特點在於其簡單而優雅的組成，並強調基酒的風味。Old-Fashioned的基本成分包括威士忌、糖和苦艾。' , 1 , 5,'Old-Fashioned-.webp');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('法國君度香橙利口酒【700ml】', 200 , 4 , '由藍龍舌蘭植物發酵，風味獨特，包括白龍舌蘭和陳年款。' , 1 , 5,'liq-2.png');
insert into product (productName, price, stockQty, description, isLaunch, categoryId, image) values ('OMAR雪莉果乾【700ml】', 900 , 12 , 'OMAR是蘇格蘭蓋爾語「琥珀」之意，因為台灣氣候炎熱，原酒成熟快，因此威士忌呈現略深的琥珀色。此款採用西班牙雪莉桶陳年，非冷凝過濾以46%酒精度裝瓶，除了雪莉桶原本的花香、果乾香氣，更帶有極有台灣味的香蕉、話梅，甚至檀香氣息，豐富有趣。' , 1 , 5,'wis-1.png');

-- cart

select * from cart;

insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-18 12:34:56' , TRUE , '已完成' , '桃園市桃園區永安路48號4樓' , 1 , 350);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-30 08:15:48' , TRUE , '處理中' , '桃園市桃園區永安路48號4樓' , 1 , 700);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-16 15:34:05' , TRUE , '已完成' , null  , 4 , 250);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-02 18:05:51', TRUE , '已完成' , '桃園市中壢區上海路32-4號' , 1 , 250);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-05 14:34:38' , TRUE , '已取消' , '台北市大安區中興路52-4號' , 3 , 400);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ('2024-01-25 13:34:28' , TRUE , '運送中' , '桃園市蘆竹區中正路148號' , 3 , 400);
insert into cart (checkoutTime, isCheckout, deliveryStatus, deliveryAddress, userId, amount) values ( null , false ,  null , null , 6 , 250);


-- cartItem

select * from cartItem;

insert into cartItem (cartId, productId, price, qty) values ( 1, 3 , 200 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 1, 4 , 150 , 1);
insert into cartItem (cartId, productId, price, qty) values ( 2, 5 , 350 , 2);
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
